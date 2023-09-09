require "rails_helper"

RSpec.describe MarketFacade, :vcr do
  describe "#all_markets" do
    it "returns a list of all markets" do
      markets = MarketFacade.all_markets

      expect(markets).to be_an(Array)
      expect(markets).not_to be_empty

      market = markets.first
      
      expect(market.name).to be_a(String)
      expect(market.city).to be_a(String)
      expect(market.state).to be_a(String)
    end
  end

  describe "#show_market" do
    it "returns a single market" do
      market = MarketFacade.show_market(322458)

      expect(market).to be_a(Market)
      expect(market.name).to be_a(String)
      expect(market.city).to be_a(String)
      expect(market.state).to be_a(String)
      expect(market.street).to be_a(String)
      expect(market.zip).to be_a(String)
    end
  end
end