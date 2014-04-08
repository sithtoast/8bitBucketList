class Gamelistgame < ActiveRecord::Base
  belongs_to :gamelist
  belongs_to :game
  has_many   :gamelistgameplatforms
  has_many   :platforms, through: :gamelistgameplatforms
end
