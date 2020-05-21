require 'net/http'
require 'open-uri'
require 'json'
class GetRequester
  @URL = ""
  def initialize(url)
    @URL = url 
  end
  def parse_json
    response.body
  end
  def get_response_body
    response = Net::HTTP.get_response(URI.parse(@URL))
  end 
end 