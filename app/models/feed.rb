require "json"
require "faraday"

class Feed
	def self.getresponse(url)
		response = Faraday.get url
		result = JSON.parse(response.body)
		return result
	end
end