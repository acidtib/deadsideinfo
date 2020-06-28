class ServerController < ApplicationController
  def all
    @servers = Server.all.order('players DESC')
  end
end
