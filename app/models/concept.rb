class Concept < ActiveRecord::Base
has_many :gameconcepts
has_many :games, :through => :gameconcepts
end
