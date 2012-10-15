require 'net/http'

class PagesController < ApplicationController
  def index
  	@hn = Feed.getresponse("http://api.ihackernews.com/page")
  end
end
