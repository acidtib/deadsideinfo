class AddWeaponTypeToWeapons < ActiveRecord::Migration[5.2]
  def change
    add_column :weapons, :weapon_type, :string
  end
end
