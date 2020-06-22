class CreateEquipment < ActiveRecord::Migration[5.2]
  def change
    create_table :equipment do |t|
      t.references :category, foreign_key: true
      t.string :name
      t.string :slug
      t.integer :buy
      t.integer :sell
      t.integer :armor
      t.integer :slots

      t.timestamps
    end
  end
end
