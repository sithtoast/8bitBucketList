class Gamelist < ActiveRecord::Base
  belongs_to :user
  has_many   :gamelistgames
  has_many   :games, through: :gamelistgames
end
