class GeoServerWorker
  include Sidekiq::Worker

  def perform(server_id)

    server = Server.find(server_id)

    results = Geocoder.search(server.address.split(":").first)
    geo = results.first

    server.update(
      geo_city: geo.city, 
      geo_country: geo.country,
      geo_region: geo.region,
      geo_lan: geo.coordinates.first,
      geo_lon: geo.coordinates.last
    )
      
  end

end