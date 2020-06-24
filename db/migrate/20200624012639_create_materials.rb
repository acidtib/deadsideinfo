class CreateMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :materials do |t|
      t.references :category, foreign_key: true
      t.string :name
      t.string :slug
      t.integer :buy
      t.integer :sell

      t.timestamps
    end
  end
end
