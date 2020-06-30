class CreateServerWorker
  include Sidekiq::Worker

  # CreateServerWorker.perform_async()

  def perform(payload)

    find_server = Server.find_by_address(payload["address"])

    unless find_server
      Server.create!(
        players: payload["players"],
        server_version: payload["server_version"],
        region: payload["region"],
        name: payload["name"],
        address: payload["address"],
        server_type: payload["server_type"],
        last_time: payload["last_time"],
        battle_type: payload["battle_type"],
        start_time: payload["start_time"],
        state: payload["state"],
        players_max: payload["players_max"],
        password: payload["password"],
        camera_type: payload["camera_type"]
      )
    end
      
  end

end