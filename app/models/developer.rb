class Developer < ActiveRecord::Base
  has_many :gamedevelopers, dependent: :destroy
  has_many :games, through: :gamedevelopers
end
