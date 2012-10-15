class PagesController < ApplicationController
  def index
  end

  def tech
  	@hn = Feed.returnHN(1)
  	@gm = Feed.returnrss("http://gizmodo.com/excerpts.xml")
  	@en = Feed.returnrss("http://www.engadget.com/rss.xml")
  	@rm = Feed.returnrss("http://www.redmondpie.com/feed")
  end

  def world
    @cnn_top = Feed.returnrss("http://rss.cnn.com/rss/edition.rss")
    @cnn_asia = Feed.returnrss("http://rss.cnn.com/rss/edition_asia.rss")
    @ec = Feed.returnrss("http://www.economist.com/rss/the_world_this_week_rss.xml")
    @nyt = Feed.returnrss("http://rss.nytimes.com/services/xml/rss/nyt/GlobalHome.xml")
  end
end
