class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.integer :user_id
      t.integer :restaurant_id
      t.string :body

      t.timestamps

    end
  end
end
