require 'sinatra/base'


class Product < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :reviews, through: :product_reviews  
end
