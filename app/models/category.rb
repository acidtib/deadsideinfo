class Category < ApplicationRecord
  has_many :weapons
  has_many :ammos
  has_many :medicines
  has_many :food_drinks
end

# == Schema Information
#
# Table name: categories
#
#  id         :bigint           not null, primary key
#  name       :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
