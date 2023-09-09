require "rails_helper"

RSpec.describe "markets show page", :vcr do
  it "returns market name and address" do
    visit "/markets/322458"

    expect(page).to have_content("14&U Farmers' Market")
    expect(page).to have_content("Washington")
    expect(page).to have_content("District of Columbia")
    expect(page).to have_content("1400 U Street NW ")
    expect(page).to have_content("20009")
  end
end