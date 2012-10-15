class PagesController < ApplicationController
  def index
  end

  def hn
  	@hn = Feed.returnHN(1)
  end
end
