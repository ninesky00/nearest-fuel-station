require 'rails_helper'

describe "user can visit the welcome page" do
  scenario "and see a dropdown menu" do
    visit '/'
    expect(page).to have_content("Nearest Fuel Station")
    expect(page).to have_content("Search For The Nearest Electric Charging Station")
    expect(page).to have_button("Find Nearest Station")
  end

  it "has a selector for location" do 
    visit '/'

    expect(page).to have_select('location')
  end

  it "can select turing as location and be redirected to search index" do 
    visit '/'

    select('Turing', from: 'location')
    click_button 'Find Nearest Station'
    expect(current_path).to eq(search_path)
  end
end
