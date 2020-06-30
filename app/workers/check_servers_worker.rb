class CheckServersWorker
  include Sidekiq::Worker

  # CheckServersWorker.perform_async({"api_endpoint":"http://176.57.174.169/dsapi/serverlist"})

  def perform(params)

    endpoint = URI(params["api_endpoint"])
    response = HTTParty.get(endpoint)

    if response.code == 200
      
      response = JSON.parse(response.body)
      serverlist = response["serverlist"]
      serverlist = serverlist.uniq{|s| s["addr"] }

      serverlist.each do |server|

        # clean up the name
        name = server["id"].gsub("_", " ").gsub("*", "").strip.split(" ").join(" ")

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

        # lets see if server is already accounted for
        find_server = Server.find_by_address(data[:address])

        if find_server
          # update it 
          UpdateServerWorker.perform_in(20.seconds, find_server.id, data)
        else
          # create server
          CreateServerWorker.perform_in(5.seconds, data)
        end
      
      end

    end
  end

end