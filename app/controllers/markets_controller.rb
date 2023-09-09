class MarketsController < ApplicationController
  def index
    @markets = MarketFacade.all_markets
  end

  def show
    @market = MarketFacade.show_market(params[:id])
    @vendors = MarketFacade.vendors_at_market(params[:id])
  end
end