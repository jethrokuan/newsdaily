require 'net/http'

class PagesController < ApplicationController
  def index
  	@hn = Feed.returnHN(5)
  end
end
