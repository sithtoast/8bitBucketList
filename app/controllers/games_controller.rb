class GamesController < ApplicationController
	def create
		@game = Game.where(giantbomb_id: params[:game][:game_id]).first
		current_user.gamelist.gamelistgames.create(game_id: @game.id)

		respond_to do |format|
			format.js {}
			format.html {redirect_to search_path(query: params[:game][:query], page: params[:game][:page])}
		end
	end
end
