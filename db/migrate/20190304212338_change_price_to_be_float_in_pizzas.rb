class ChangePriceToBeFloatInPizzas < ActiveRecord::Migration[5.2]
  def change
    change_column :pizzas, :price, :float
  end
end