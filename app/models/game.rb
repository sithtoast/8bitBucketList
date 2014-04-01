class Game < ActiveRecord::Base
has_many :gameconcepts
has_many :gamegenres
has_many :gameplatforms
has_many :concepts, :through => :gameconcepts
has_many :genres, :through => :gamegenres
has_many :platforms, :through => :gameplatforms
end
