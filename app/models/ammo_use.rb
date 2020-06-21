class AmmoUse < ApplicationRecord
  belongs_to :ammo
  belongs_to :weapon
end

# == Schema Information
#
# Table name: ammo_uses
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  ammo_id    :bigint
#  weapon_id  :bigint
#
# Indexes
#
#  index_ammo_uses_on_ammo_id    (ammo_id)
#  index_ammo_uses_on_weapon_id  (weapon_id)
#
# Foreign Keys
#
#  fk_rails_...  (ammo_id => ammos.id)
#  fk_rails_...  (weapon_id => weapons.id)
#
