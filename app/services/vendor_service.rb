class VendorService
  def self.conn
    Faraday.new('http://localhost:3000')
  end

  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.single_vendor(id)
    get_url("/api/v0/vendors/#{id}")
  end
end