class AddUserIDtoRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :user_id, :integer
    add_column :reviews, :comments, :text

  end
end
