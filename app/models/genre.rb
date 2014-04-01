class Genre < ActiveRecord::Base
has_many :gamegenres
has_many :games, :through => :gamegenres
end
