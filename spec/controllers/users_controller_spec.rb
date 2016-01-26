require 'rails_helper'

describe UsersController, :type => :controller do
	before do
		#@user = User.create!(first_name: "John", last_name: "Smith", email: "john@smith.com", password: "password")
		@user = FactoryGirl.create(:user)
		#@usertwo = User.create!(first_name: "Bill", last_name: "Bailey", email: "bill@bailey.com", password: "password")
		@usertwo = FactoryGirl.create(:user)
	end 

	describe "Get #show" do
		context "User is logged in" do
			before do
				sign_in @user
			end

			it "loads correct user details" do
				get :show, id: @user.id
				expect(response).to have_http_status(200)
				expect(assigns(:user)).to eq @user
			end
		end

		context "No User is logged in" do
			it "redirects to login" do
				get :show, id: @user.id
				expect(response).to redirect_to(root_path)
			end
		end

		context "User tries to see Usertwo's show page" do
			before do
				sign_in @user
			end

			it "redirects to login" do
				get :show, id: @usertwo.id
				expect(response).to redirect_to(root_path)
			end

			it "responds with an HTTP 302 status code" do
				get :show, id: @usertwo.id
				expect(response).to have_http_status(302)
			end
		end

	end

end