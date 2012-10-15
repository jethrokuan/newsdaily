require "rss"
require "open-uri"
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

	def self.returnrss(uri)
		rss_content =""
		open(uri) do |f|
   			rss_content = f.read
		end
		rss = RSS::Parser.parse(rss_content, false)

		return rss
	end
end