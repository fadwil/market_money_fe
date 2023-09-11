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

  describe "#vendors_at_market" do
    it "returns vendors associated with a market" do
      vendors = MarketFacade.vendors_at_market(322500)
      
      expect(vendors).to be_an(Array)
      expect(vendors.first.name).to be_a(String)
      expect(vendors.first.description).to be_a(String)
      expect(vendors.first.contact_name).to be_a(String)
      expect(vendors.first.contact_phone).to be_a(String)
      expect(vendors.first.credit_accepted).to be_in([true, false])
    end
  end
end