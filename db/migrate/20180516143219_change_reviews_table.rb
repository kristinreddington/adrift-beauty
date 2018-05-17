class ChangeReviewsTable < ActiveRecord::Migration
  def change
    rename_column :reviews, :category_id, :product_id
    remove_column :reviews, :date 
  end
end
