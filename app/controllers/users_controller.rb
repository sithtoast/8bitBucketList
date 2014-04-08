class UsersController < ApplicationController
  def gamelist
    @games = current_user.gamelist.games
  end
end
