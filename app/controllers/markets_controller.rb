class MarketsController < ApplicationController
  def index
    @markets = MarketFacade.all_markets
  end
end