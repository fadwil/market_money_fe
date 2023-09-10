require "rails_helper"

RSpec.describe "vendors show page" do
  it "returns the vendors name and attributes" do
    visit vendor_path(56172)
    expect(page).to have_content("Vendor Name")
  end
end