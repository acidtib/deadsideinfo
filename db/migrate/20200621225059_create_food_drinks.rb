class CreateFoodDrinks < ActiveRecord::Migration[5.2]
  def change
    create_table :food_drinks do |t|
      t.references :category, foreign_key: true
      t.string :name
      t.string :slug
      t.integer :buy
      t.integer :sell
      t.integer :food
      t.integer :water
      t.integer :health

      t.timestamps
    end
  end
end
