class VendorFacade
  def self.show_vendor(id)
    vendor_data = VendorService.single_vendor(id)[:data]
    Vendor.new(vendor_data)
  end
end