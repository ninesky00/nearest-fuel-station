class NrelApiFacade
  class << self
    def nearest_station
      address = '1331 17th St LL100, Denver, CO 80202'
      path = 'api/alt-fuel-stations/v1/nearest.json'
      params = {location: address}
      stations = NrelApiService.nearby(path, params)
      nearest_station = stations[:fuel_stations].first
      Station.new(nearest_station)
    end
  end
end