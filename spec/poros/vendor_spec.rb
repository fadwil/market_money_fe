require 'rails_helper'

RSpec.describe Vendor do
  it 'exists and has attributes' do
    vendor_data = {
      id: '54321',
      attributes: {
        name: 'Vendor Name',
        description: 'Vendor Description',
        contact_name: 'Contact Person',
        contact_phone: '123-456-7890',
        credit_accepted: true
      }
    }

    vendor = Vendor.new(vendor_data)

    expect(vendor.id).to eq('54321')
    expect(vendor.name).to eq('Vendor Name')
    expect(vendor.description).to eq('Vendor Description')
    expect(vendor.contact_name).to eq('Contact Person')
    expect(vendor.contact_phone).to eq('123-456-7890')
    expect(vendor.credit_accepted).to eq(true)
  end
end
