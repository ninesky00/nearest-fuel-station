class SearchController < ApplicationController
  def index
    @station = NrelApiFacade.nearest_station
  end
end
