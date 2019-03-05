class CreateJoinTableRestaurantsPizzas < ActiveRecord::Migration[5.2]
  def change
    create_join_table :restaurants, :pizzas do |t|
      # t.index [:restaurant_id, :pizza_id]
      # t.index [:pizza_id, :restaurant_id]
    end
  end
end
