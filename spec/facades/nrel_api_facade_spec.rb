require 'rails_helper'

RSpec.describe NrelApiFacade do 
  context "class methods" do 
    it "returns the nearest alt gas station" do 
      nearest_station = NrelApiFacade.nearest_station
      expect(nearest_station).to be_a(Station)
      expect(nearest_station.name).to be_a(String)
      expect(nearest_station.address).to be_a(String)
      expect(nearest_station.fuel_type).to be_a(String)
      expect(nearest_station.hours).to be_a(String)
    end
  end
end