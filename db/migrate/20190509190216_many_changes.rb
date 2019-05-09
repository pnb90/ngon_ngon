class ManyChanges < ActiveRecord::Migration[5.2]
  def change
    remove_column :restaurant_dishes, :rating, :integer
    remove_column :restaurant_dishes, :photos, :string
    remove_column :restaurant_dishes, :comments, :text
    rename_column :restaurant_dishes, :tried, :craving
    add_column :restaurants, :visit, :binary
    add_column :restaurants, :craving, :binary
    add_column :restaurants, :favorite, :binary
    add_column :restaurants, :comments, :text
  end
end
