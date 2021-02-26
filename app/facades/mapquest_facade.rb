class MapquestFacade
  class << self 
    def directions
      from = '1331 17th St LL100, Denver, CO 80202'
      to = NrelApiFacade.nearest_station.address + ', Denver, CO 80202'
      path = 'directions/v2/route'
      params = {from: from, to: to}
      route = MapquestService.call_api(path, params)[:route]
      Direction.new(route)
    end
  end
end