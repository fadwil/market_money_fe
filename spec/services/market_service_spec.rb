require "rails_helper"

RSpec.describe MarketService, :vcr do
  describe "class methods" do
    it "#get_all_markets returns all markets" do
      response = MarketService.get_all_markets
      expect(response).to be_a Hash

      markets = response[:data]
      expect(markets).to be_an(Array)
      expect(markets[0][:attributes]).to have_key(:name)
      expect(markets[0][:attributes][:name]).to be_a(String)
      expect(markets[0][:attributes]).to have_key(:city)
      expect(markets[0][:attributes][:city]).to be_a(String)
      expect(markets[0][:attributes]).to have_key(:state)
      expect(markets[0][:attributes][:state]).to be_a(String)
    end

    it "#single_market returns single market" do
      response = MarketService.single_market(322458)

      expect(response).to be_a Hash
      expect(response[:data][:attributes][:name]).to eq("14&U Farmers' Market")
      expect(response[:data][:attributes][:city]).to eq("Washington")
      expect(response[:data][:attributes][:state]).to eq("District of Columbia")
      expect(response[:data][:attributes][:street]).to eq("1400 U Street NW ")
      expect(response[:data][:attributes][:zip]).to eq("20009")
    end
  end
end