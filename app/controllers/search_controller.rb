class SearchController < ApplicationController
  def index
    @station = NrelApiFacade.nearest_station
    @directions = MapquestFacade.directions
  end
end
