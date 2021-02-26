require 'rails_helper'

RSpec.describe NrelApiService do
  context "class method" do
    it "can make API calls to get the nearest station given location" do 
      address = '1331 17th St LL100, Denver, CO 80202'
      path = 'api/alt-fuel-stations/v1/nearest.json'
      params = {location: address}
      service = NrelApiService.nearby(path, params)
      nearest_station = service[:fuel_stations].first
      expect(nearest_station[:station_name]).to eq("Seventeenth Street Plaza")
      expect(nearest_station[:street_address]).to eq("1225 17th St.")
      expect(nearest_station[:fuel_type_code]).to eq("ELEC")
      expect(nearest_station[:access_days_time_fr]).to be_nil
    end
  end
end