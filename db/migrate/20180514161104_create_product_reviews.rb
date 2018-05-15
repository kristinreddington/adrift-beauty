class CreateProductReviews < ActiveRecord::Migration
  def change
    create_table :product_reviews do |t|
      t.integer :user_id
      t.integer :product_id
      t.integer :review_id
    end 
  end
end
