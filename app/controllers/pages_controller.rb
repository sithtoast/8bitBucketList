class PagesController < ApplicationController
  def index
  end

  def search
    if params[:query]
      @game = params[:query]
      @search = GiantBomb::Search.new
      @search.limit(10) # limits number of returned resources
      @search.resources('game') # determines type(s) of resources
      @search.fields('id') # limits fields returned
      @search.offset(100) # sets the offset
      @search.query(@game) # the query to search against
      @results = @search.fetch # makes request

      @temp = []
      @results.each do |result|
        @resultgame = GiantBomb::Game.detail(result["id"])
        @temp.push(@resultgame)
      end
      @results = @temp
  	end
  end
end
