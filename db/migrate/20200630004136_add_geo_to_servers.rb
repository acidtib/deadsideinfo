class AddGeoToServers < ActiveRecord::Migration[5.2]
  def change
    add_column :servers, :geo_city, :string
    add_column :servers, :geo_country, :string
    add_column :servers, :geo_region, :string
    add_column :servers, :geo_lan, :decimal
    add_column :servers, :geo_lon, :decimal
  end
end
