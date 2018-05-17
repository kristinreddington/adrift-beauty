require 'sinatra/base'
class User < ActiveRecord::Base
  has_secure_password
  has_many :products
  


  def slug
    slugged_name = self.name.strip.downcase
      slugged_name.gsub! /['`]/,""
      slugged_name.gsub! /\s*@\s*/, " at "
      slugged_name.gsub! /\s*&\s*/, " and "
      slugged_name.gsub! /\s*[^A-Za-z0-9\.\-]\s*/, '-'
      slugged_name.gsub! /_+/,"-"
      slugged_name.gsub! /\A[_\.]+|[_\.]+\z/,""
      slugged_name
  end

  def self.find_by_slug(slug)
      User.all.detect {|user| user.slug == slug}
  end


end
