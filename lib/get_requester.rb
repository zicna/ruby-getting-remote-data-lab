# Write your code here
require 'net/http'
require 'open-uri'
require 'json'
require 'pry'

class GetRequester

    attr_accessor :uri

    def initialize(url)
        @uri = URI.parse(url)
    end

    def get_response_body
        response = Net::HTTP.get_response(self.uri)
        #response = self.uri.open
        response.body
    end

    def parse_json
        JSON.parse(get_response_body)
    end
end
