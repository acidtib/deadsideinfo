class Medicine < ApplicationRecord
  belongs_to :category
end

# == Schema Information
#
# Table name: medicines
#
#  id          :bigint           not null, primary key
#  buy         :integer
#  heal        :integer
#  name        :string
#  sell        :integer
#  slug        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint
#
# Indexes
#
#  index_medicines_on_category_id  (category_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#
