class AddAddressToServers < ActiveRecord::Migration[5.2]
  def change
    add_column :servers, :address, :string
  end
end
