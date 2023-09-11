require "rails_helper"

RSpec.describe VendorService, :vcr do
  describe "class methods" do
    it "#single_vendor returns single vendor" do
      response = VendorService.single_vendor(56172)

      expect(response).to be_a(Hash)

      vendor = response[:data]
      expect(vendor).to be_a(Hash)
      expect(vendor[:attributes]).to have_key(:name)
      expect(vendor[:attributes][:name]).to be_a(String)
      expect(vendor[:attributes]).to have_key(:description)
      expect(vendor[:attributes][:description]).to be_a(String)
      expect(vendor[:attributes]).to have_key(:contact_name)
      expect(vendor[:attributes][:contact_name]).to be_a(String)
      expect(vendor[:attributes]).to have_key(:contact_phone)
      expect(vendor[:attributes][:contact_phone]).to be_a(String)
      expect(vendor[:attributes]).to have_key(:credit_accepted)
      expect(vendor[:attributes][:credit_accepted]).to be_in([true, false])
      expect(vendor[:attributes]).to have_key(:states_sold_in)
      expect(vendor[:attributes][:states_sold_in]).to be_an(Array)
    end
  end
end