require 'rails_helper'

describe Product do
	context "when the product has comments" do
		before do
			@product = Product.create!(name: "new album")
			@user = User.create!(first_name: "John", last_name: "Smith", email: "john@smith.com", password: "password")
			@product.comments.create!(rating: 1, user: @user, body: "not the best album")
			@product.comments.create!(rating: 3, user: @user, body: "better than the last album")
			@product.comments.create!(rating: 5, user: @user, body: "best album to date!")
		end

		it "returns the average rating of all comments" do
			expect(@product.average_rating).to eq 3
		end
	end
end