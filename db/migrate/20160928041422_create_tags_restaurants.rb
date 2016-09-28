class CreateTagsRestaurants < ActiveRecord::Migration
  def change
    create_table :tags_restaurants do |t|
      t.integer :tag_id
      t.integer :restaurant_id
      t.integer :user_id

      t.timestamps

    end
  end
end
