class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  validates :body, presence: true
  validates :user, presence: true
  validates :product, presence: true
  validates :rating, numerically: { only_integer: true }

end
