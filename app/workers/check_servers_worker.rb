class CheckServersWorker
  include Sidekiq::Worker

  # CheckServersWorker.perform_async("http://176.57.174.169/dsapi/serverlist")

  def perform(api_endpoint)
    response = HTTParty.get(URI(api_endpoint))

    if response.code == 200
      
      response = JSON.parse(response.body)

      serverlist = response["serverlist"]

      serverlist.each do |server|

        name = server["id"].gsub("_", " ").strip

        data = {
          players: server["players"],
          server_version: server["serverversion"],
          region: server["region"],
          name: name,
          server_type: server["servertype"],
          last_time: server["last_time"],
          battle_type: server["battletype"],
          start_time: server["starttime"],
          state: server["state"],
          players_max: server["playersmax"],
          password: server["password"],
          camera_type: server["cameratype"],
          address: server["addr"]
        }
        

        find_server = Server.find_by_address(data[:address])

        if find_server
          # update it 
          UpdateServerWorker.perform_async(find_server.id, data)
        else
          # create server
          CreateServerWorker.perform_async(data)
        end
      
      end

    end
  end

end