require 'rails_helper'

RSpec.describe "search index" do 
  it "I should see the closest electric fuel station to me" do 
    address = '1331 17th St LL100, Denver, CO 80202'

    visit '/search'

    expect(page).to have_content('name: Seventeenth Street Plaza')
    expect(page).to have_content('address: 1225 17th St.')
    expect(page).to have_content('fuel type: ELEC')
    expect(page).to have_content('hours of operation: N/A')
  end

  it "I should also see directions from me to the station" do 
    address = '1331 17th St LL100, Denver, CO 80202'
    station = NrelApiFacade.nearest_station

    visit '/search'
    
    expect(page).to have_content('distance')
    expect(page).to have_content('travel time')
    expect(page).to have_content('directions')
  end
end