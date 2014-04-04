class Game < ActiveRecord::Base
  has_many :gamelistgames, dependent: :destroy
  has_many :gameconcepts, dependent: :destroy
  has_many :gamegenres, dependent: :destroy
  has_many :gameplatforms, dependent: :destroy
  has_many :gamedevelopers, dependent: :destroy
  has_many :gamepublishers, dependent: :destroy
  has_many :gamelists,  through: :gamelistgames
  has_many :concepts,   through: :gameconcepts
  has_many :genres,     through: :gamegenres
  has_many :platforms,  through: :gameplatforms
  has_many :developers, through: :gamedevelopers
  has_many :publishers, through: :gamepublishers
end
