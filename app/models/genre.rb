class Genre < ActiveRecord::Base
  has_many :gamegenres, dependent: :destroy
  has_many :games, through: :gamegenres
end
