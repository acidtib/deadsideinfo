class Server < ApplicationRecord
end

# == Schema Information
#
# Table name: servers
#
#  id             :bigint           not null, primary key
#  address        :string
#  battle_type    :integer
#  camera_type    :integer
#  last_time      :string
#  name           :string
#  password       :integer
#  players        :integer
#  players_max    :integer
#  region         :string
#  server_type    :integer
#  server_version :string
#  start_time     :string
#  state          :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
