class PagesController < ApplicationController
  def index
  end

  def search
    if params[:query]
      @game = params[:query]
      @search = GiantBomb::Search.new
      @search.limit(1) # limits number of returned resources
      @search.resources('game') # determines type(s) of resources
      @search.fields('id') # limits fields returned
      @search.offset(100) # sets the offset
      @search.query(@game) # the query to search against
      @results = @search.fetch # makes request

      @temp = []
      @results.each do |result|
        @game = Game.where(giantbomb_id: result["id"]).first_or_initialize
        if @game.id.nil?
          @resultgame = GiantBomb::Game.detail(result["id"])
          @game.name = @resultgame.name
          @game.deck = @resultgame.deck
          @game.save

          if !@resultgame.platforms.nil?
            @resultgame.platforms.each do |platform|
              @platform = Platform.where(name: platform["name"]).first_or_create
              @game.gameplatforms.create(platform_id: @platform.id)
            end
          end

          if !@resultgame.genres.nil?
            @resultgame.genres.each do |genre|
              @genre = Genre.where(name: genre["name"]).first_or_create
              @game.gamegenres.create(genre_id: @genre.id)
            end
          end

          if !@resultgame.concepts.nil?
            @resultgame.concepts.each do |concept|
              @concept = Concept.where(name: concept["name"]).first_or_create
              @game.gameconcepts.create(concept_id: @concept.id)
            end
          end

          if !@resultgame.developers.nil?
            @resultgame.developers.each do |developer|
              @developer = Developer.where(name: developer["name"]).first_or_create
              @game.gamedevelopers.create(developer_id: @developer.id)
            end
          end

          if !@resultgame.publishers.nil?
            @resultgame.publishers.each do |publisher|
              @publisher = Publisher.where(name: publisher["name"]).first_or_create
              @game.gamepublishers.create(publisher_id: @publisher.id)
            end
          end
        end
        @temp.push(@game)
      end
      @results = @temp
  	end
  end
end
