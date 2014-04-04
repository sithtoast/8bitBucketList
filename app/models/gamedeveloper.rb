class Gamedeveloper < ActiveRecord::Base
  belongs_to :game
  belongs_to :developer
end
