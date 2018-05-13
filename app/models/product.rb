require 'sinatra/base'


class Product < ActiveRecord::Base
  belongs_to :user
  belongs_to :category 
end
