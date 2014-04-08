class UsersController < ApplicationController
  def gamelist
    @games = current_user.gamelist.gamelistgames
  end
end
