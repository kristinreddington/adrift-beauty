class Review < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :products, through: :product_reviews
  


end
