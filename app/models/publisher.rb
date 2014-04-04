class Publisher < ActiveRecord::Base
  has_many :gamepublishers, dependent: :destroy
  has_many :games, through: :gamepublishers
end
