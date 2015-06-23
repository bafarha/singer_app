class Product < ActiveRecord::Base
	has_many :comments

	def average_rating
    	comments.average(:rating).to_f
  	end

end
