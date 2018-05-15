class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :content
      t.date :date
      t.integer :user_id
      t.integer :category_id 
    end
  end
end
