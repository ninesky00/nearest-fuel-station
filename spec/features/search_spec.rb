require 'rails_helper'

RSpec.describe "search index" do 
  it "I should see the closest electric fuel station to me" do 
    address = '1331 17th St LL100, Denver, CO 80202'

    visit '/search'

    expect(page).to have_content('name:')
    expect(page).to have_content('address:')
    expect(page).to have_content('fuel type:')
    expect(page).to have_content('access times:')
  end
end