class VendorsController < ApplicationController
  def show
    @vendor = VendorFacade.show_vendor(params[:id])
  end
end