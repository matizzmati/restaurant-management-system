class CreatePizzas < ActiveRecord::Migration[5.2]
  def change
    create_table :pizzas do |t|
      t.string :name
      t.string :price
      t.text :ingredients

      t.timestamps
    end
    add_index :pizzas, :name, unique: true
  end
end
