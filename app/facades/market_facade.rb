class MarketFacade
  def self.all_markets
    MarketService.get_all_markets[:data].map do |market_data|
      Market.new(market_data)
    end
  end
end