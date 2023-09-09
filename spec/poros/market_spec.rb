# spec/models/market_spec.rb

require 'rails_helper'

RSpec.describe Market do
  it 'exists and has attributes' do
    market_data = {
      id: '12345',
      attributes: {
        name: "A Market",
        city: "A City",
        state: "A State",
        street: "123 A St",
        zip: "12345"
      }
    }

    market = Market.new(market_data)

    expect(market.id).to eq('12345')
    expect(market.name).to eq('A Market')
    expect(market.city).to eq('A City')
    expect(market.state).to eq('A State')
    expect(market.street).to eq('123 A St')
    expect(market.zip).to eq('12345')
  end
end
