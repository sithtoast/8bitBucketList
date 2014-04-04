class Gamelistgame < ActiveRecord::Base
  belongs_to :gamelist
  belongs_to :game
end
