class Platform < ActiveRecord::Base
  has_many :gameplatforms, dependent: :destroy
  has_many :games, through: :gameplatforms
end
