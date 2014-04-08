class GamesController < ApplicationController
	def create
		@game = Game.where(giantbomb_id: params[:game][:game_id]).first
		current_user.gamelist.gamelistgames.create(game_id: @game.id)
		if params[:game][:platforms][:id]
		  params[:game][:platforms][:id].each do |platform|
		    current_user.gamelist.gamelistgames.where(game_id: @game.id).first.gamelistgameplatforms.create(platform_id: platform)
		  end
		end
		
		# Do I need to do this? I would think so. None of the games show up with devs/publishers on the list.
		if params[:game][:developers][:id]
		  params[:game][:developers][:id].each do |developer|
		    current_user.gamelist.gamelistgames.where(game_id: @game.id).first.gamelistgamedevelopers.create(developer_id: developer)
		  end
		end
		
		if params[:game][:publishers][:id]
		  params[:game][:publishers][:id].each do |publisher|
		    current_user.gamelist.gamelistgames.where(game_id: @game.id).first.gamelistgamepublishers.create(publisher_id: publisher)
		  end
		end

		respond_to do |format|
			format.js {}
			format.html {redirect_to search_path(query: params[:game][:query], page: params[:game][:page])}
		end
	end
end
