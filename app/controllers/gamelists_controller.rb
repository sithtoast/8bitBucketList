class GamelistsController < ApplicationController
	def destroy
    current_user.gamelist.gamelistgames.where(game_id: params[:id]).destroy_all

		respond_to do |format|
			format.js {}
			format.html {redirect_to gamelist_path, notice: "Buhleeted!"}
		end
	end
end