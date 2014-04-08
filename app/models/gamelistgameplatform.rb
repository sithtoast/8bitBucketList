class Gamelistgameplatform < ActiveRecord::Base
  belongs_to :gamelistgame
  belongs_to :platform
end
