class Material < ApplicationRecord
  belongs_to :category
end

# == Schema Information
#
# Table name: materials
#
#  id          :bigint           not null, primary key
#  buy         :integer
#  name        :string
#  sell        :integer
#  slug        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint
#
# Indexes
#
#  index_materials_on_category_id  (category_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#
