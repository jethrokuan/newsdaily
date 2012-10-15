require "json"
require "faraday"
require 'ruby-hackernews'

include RubyHackernews

class Feed
	def self.returnHN(pages)
		return Entry.all(pages)
	end

	def self.getresponse(url)
		response = Faraday.get url
		result = JSON.parse(response.body)
		return result
	end
end