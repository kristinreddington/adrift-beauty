class DeleteProductReviews < ActiveRecord::Migration
  def change
    drop_table :product_reviews
  end
end
