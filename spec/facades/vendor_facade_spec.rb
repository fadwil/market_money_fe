require "rails_helper"

RSpec.describe VendorFacade, :vcr do
  describe "#show_vendor" do
    it "returns a single vendor" do
      vendor = VendorFacade.show_vendor(56172)

      expect(vendor).to be_a(Vendor)
      expect(vendor.name).to be_a(String)
      expect(vendor.description).to be_a(String)
      expect(vendor.contact_name).to be_a(String)
      expect(vendor.contact_phone).to be_a(String)
      expect(vendor.credit_accepted).to be_in([true, false])
    end
  end
end