require "rails_helper"

RSpec.describe "vendors show page" do
  it "returns the vendors name and attributes" do
    visit vendor_path(56172)
    expect(page).to have_content("The Fabric Patch")
    expect(page).to have_content("Contact Info")
    expect(page).to have_content("name: Hank Simonis")
    expect(page).to have_content("phone: 363-062-9508")
    expect(page).to have_content("Credit Accepted?: NO")
    expect(page).to have_content("Description: Upcycled fabric creations and accessories.")
  end
end