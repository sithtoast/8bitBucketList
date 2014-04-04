class Developer < ActiveRecord::Base
  has_many :gamedevelopers
  has_many :games, through: :gamedevelopers
end
