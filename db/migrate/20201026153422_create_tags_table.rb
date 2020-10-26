class CreateTagsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.string :name
      t.integer :dish_id
    end
  end
end
