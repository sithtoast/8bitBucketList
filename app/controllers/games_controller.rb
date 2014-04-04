class GamesController < ApplicationController
	def create
		@game = Game.where(giantbomb_id: params[:game][:game_id]).first_or_initialize
		if @game.id.nil?
			@resultgame = GiantBomb::Game.detail(params[:game][:game_id])
			@game.name = @resultgame.name
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
		end
	current_user.gamelist.gamelistgames.create(game_id: @game.id)
	end
end
