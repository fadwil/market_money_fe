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

  it "displays all venders with the name as a link to their how page" do
    visit "/markets/322474"

    expect(page).to have_content("Vendors at our Market")

    within("ul.vendors") do
      expect(page).to have_link("Orange County Olive Oil")
      expect(page).to have_link("The Vodka Vault")
      expect(page).to have_link("The Fabric Patch")

      click_link("The Fabric Patch")
    end
    expect(current_path).to eq(vendor_path(56172))
  end
end