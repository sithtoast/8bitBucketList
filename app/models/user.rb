class User < ActiveRecord::Base
	has_one :gamelist, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :omniauthable
  after_save :create_game_list

  def create_game_list
  	gamelist = self.build_gamelist()
  	gamelist.save
  end

	def self.has_game?(game)
		self.gamelist.games.include?(game)
	end
end
