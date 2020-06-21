require 'test_helper'

class WeaponTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: weapons
#
#  id          :bigint           not null, primary key
#  buy         :integer
#  mag         :integer
#  name        :string
#  sell        :integer
#  slug        :string
#  weapon_type :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint
#
# Indexes
#
#  index_weapons_on_category_id  (category_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#
