require "rails_helper"

RSpec.describe "markets index page" do
  it "returns all markets with name, city, and state", :vcr do
    visit "/markets"

    expect(page).to have_content('Markets')

    within(".markets") do 
      expect(page).to have_content("14&U Farmers' Market")
      expect(page).to have_content("District of Columbia")
      expect(page).to have_content("Washington")
    end
  end
end