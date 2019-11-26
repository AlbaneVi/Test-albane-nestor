class TechnicalTestApi
  TECHNICAL_TEST_API_BASE_URL = "https://technical-test-api.herokuapp.com"

  def self.list_rooms
    url =       "#{TECHNICAL_TEST_API_BASE_URL}/rooms"
    response =  HTTParty.get(url)
    JSON.parse(response.body)
  end

  def self.room_detail
    url =       "#{TECHNICAL_TEST_API_BASE_URL}/rooms/:id"
    response =  HTTParty.get(url)
    JSON.parse(response.body)
  end

  def self.list_customers
    url =       "#{TECHNICAL_TEST_API_BASE_URL}/clients"
    response =  HTTParty.get(url)
    JSON.parse(response.body)
  end

  def self.customer_detail
    url =       "#{TECHNICAL_TEST_API_BASE_URL}/clients/:id"
    response =  HTTParty.get(url)
    JSON.parse(response.body)
  end
end
