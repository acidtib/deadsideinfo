class CreateMedicines < ActiveRecord::Migration[5.2]
  def change
    create_table :medicines do |t|
      t.references :category, foreign_key: true
      t.string :name
      t.string :slug
      t.integer :buy
      t.integer :sell
      t.integer :heal

      t.timestamps
    end
  end
end
