require "rails_helper"

RSpec.describe MarketService, :vcr do
  it "returns all markets" do
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
end