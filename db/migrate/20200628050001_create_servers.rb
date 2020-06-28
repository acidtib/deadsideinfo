class CreateServers < ActiveRecord::Migration[5.2]
  def change
    create_table :servers do |t|
      t.integer :players
      t.string :server_version
      t.string :region
      t.string :name
      t.integer :server_type
      t.string :last_time
      t.integer :battle_type
      t.string :start_time
      t.integer :state
      t.integer :players_max
      t.integer :password
      t.integer :camera_type

      t.timestamps
    end
  end
end
