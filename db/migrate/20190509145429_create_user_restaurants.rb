class CreateUserRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :user_restaurants do |t|
      t.integer :user_id
      t.integer :restaurant_id
      t.string :photos
      t.binary :favorite
      t.binary :visited
      t.integer :rating
      t.text :comments

      t.timestamps
    end
  end
end
