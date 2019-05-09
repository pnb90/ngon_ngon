class CreateRestaurantDishes < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurant_dishes do |t|
      t.integer :dish_id
      t.integer :restaurant_id
      t.integer :rating
      t.string :photos
      t.binary :favorite
      t.binary :tried
      t.text :comments

      t.timestamps
    end
  end
end
