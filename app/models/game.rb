class Game < ActiveRecord::Base
  has_many :gamelistgames
  has_many :gameconcepts
  has_many :gamegenres
  has_many :gameplatforms
  has_many :gamedevelopers
  has_many :gamepublishers
  has_many :gamelists,  through: :gamelistgames
  has_many :concepts,   through: :gameconcepts
  has_many :genres,     through: :gamegenres
  has_many :platforms,  through: :gameplatforms
  has_many :developers, through: :gamedevelopers
  has_many :publishers, through: :gamepublishers
end
