class CreateProducts < ActiveRecord::Migration


  def change
    create_table :products do |t|
      t.string :brand
      t.string :name
      t.integer :user_id
    end
  end
end
