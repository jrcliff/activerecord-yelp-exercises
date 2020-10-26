class CreateDishesTagsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :dish_tags do |t|
      t.integer :tag_id
      t.integer :dish_id
    end
  end
end
