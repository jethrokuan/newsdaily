class PagesController < ApplicationController
  def index
  end

  def tech
  	@hn = Feed.returnHN(1)
  	@gm = Feed.returnrss("http://gizmodo.com/excerpts.xml")
  end
end
