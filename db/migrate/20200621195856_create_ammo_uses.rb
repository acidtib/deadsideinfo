class CreateAmmoUses < ActiveRecord::Migration[5.2]
  def change
    create_table :ammo_uses do |t|
      t.references :ammo, foreign_key: true
      t.references :weapon, foreign_key: true

      t.timestamps
    end
  end
end
