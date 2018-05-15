class Category < ActiveRecord::Base
  has_many :products
  has_many :reviews 

  def slug
    name = self.name.strip.downcase
      name.gsub! /['`]/,""
      name.gsub! /\s*@\s*/, " at "
      name.gsub! /\s*&\s*/, " and "
      name.gsub! /\s*[^A-Za-z0-9\.\-]\s*/, '-'
      name.gsub! /_+/,"-"
      name.gsub! /\A[_\.]+|[_\.]+\z/,""
      name
  end

  def self.find_by_slug(slug)
      Product.all.detect {|product| product.slug == slug}
  end

end
