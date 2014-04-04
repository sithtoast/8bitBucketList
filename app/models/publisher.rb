class Publisher < ActiveRecord::Base
  has_many :gamepublishers
  has_many :games, through: :gamepublishers
end
