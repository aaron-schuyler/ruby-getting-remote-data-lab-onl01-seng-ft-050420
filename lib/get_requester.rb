require 'net/http'
require 'open-uri'
require 'json'
class GetRequester
  @URL = ""
  def initialize(url)
    @URL = url 
  end
  def parse_json
    uri = URI.parse(@URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end
end 