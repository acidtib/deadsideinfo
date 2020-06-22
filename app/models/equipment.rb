class Equipment < ApplicationRecord
  belongs_to :category
end

# == Schema Information
#
# Table name: equipment
#
#  id          :bigint           not null, primary key
#  armor       :integer
#  buy         :integer
#  name        :string
#  sell        :integer
#  slots       :integer
#  slug        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint
#
# Indexes
#
#  index_equipment_on_category_id  (category_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#
