class UpdateServerWorker
  include Sidekiq::Worker

  # UpdateServerWorker.perform_async()

  def perform(server_id, payload)

    server = Server.find(server_id)

    server.update(
      players: payload[:players],
      server_version: payload[:server_version],
      region: payload[:region],
      name: payload[:name],
      server_type: payload[:server_type],
      last_time: payload[:last_time],
      battle_type: payload[:battle_type],
      start_time: payload[:start_time],
      state: payload[:state],
      players_max: payload[:players_max],
      password: payload[:password],
      camera_type: payload[:camera_type]
    )
      
  end

end