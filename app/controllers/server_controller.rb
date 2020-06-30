class ServerController < ApplicationController
  def all
    @servers = Server.all
    @total_servers = @servers.count

    if params["q"]
      @servers = Server.ransack(name_cont: params["q"]).result
    end

    @servers = @servers.page(params[:page])
    
    if params["per"]
      if params["per"] == "all"
        @servers = @servers.per(@total_servers)
      else
        @servers = @servers.per(params["per"])
      end
    end

    if params["order"]
      @servers = @servers.order("#{params["order"]} DESC")
    else
      @servers = @servers.order('players DESC')
    end
  end
end
