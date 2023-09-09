class MarketFacade
  def self.all_markets
    MarketService.get_all_markets[:data].map do |market_data|
      Market.new(market_data)
    end
  end

  def self.show_market(id)
    market_data = MarketService.single_market(id)[:data]
    Market.new(market_data)
  end

  def self.vendors_at_market(id)
    MarketService.market_vendors(id)[:data].map do |vendor_data|
      Vendor.new(vendor_data)
    end
  end
end