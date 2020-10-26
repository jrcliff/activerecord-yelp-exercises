class CreateDishesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :dishes do |t|
      t.string :name
      t.integer :tag_id
      t.integer :restaurant_id
    end
  end
end
