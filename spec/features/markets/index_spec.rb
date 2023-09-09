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

  it "has a button that leads to a market's show page" do
    visit "/markets"

    within(".markets") do 
      more_info_buttons = all(".more-info-button")
      more_info_buttons[0].click
      expect(current_path).to eq("/markets/322458") 
    end
  end
end