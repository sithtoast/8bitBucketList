class Gamelist < ActiveRecord::Base
  belongs_to :user
  has_many   :gamelistgames, dependent: :destroy
  has_many   :games, through: :gamelistgames
    
  def popular_genres
    @games = self.games
    @genres = Hash.new
    @games.each do |game|
      game.genres.each do |genre|
        if @genres[genre.name].nil?
          @genres[genre.name] = 1
        else
          @genres[genre.name] += 1
        end
      end
    end
    @genres = Hash[@genres.sort_by {|_, v| v}.reverse]
    @genres.first(5)
  end
  
  def popular_platforms
    @games = self.games
    @platforms = Hash.new
    @games.each do |game|
      game.platforms.each do |platform|
        if @platforms[platform.name].nil?
          @platforms[platform.name] = 1
        else
          @platforms[platform.name] += 1
        end
      end
    end
    @platforms = Hash[@platforms.sort_by {|_, v| v}.reverse]    
    @platforms.first(5)
  end
  
  def popular_developers
    @games = self.games
    @developers = Hash.new
    @developers.each do |game|
      game.developers.each do |developer|
        if @developers[genre.name].nil?
          @developers[genre.name] = 1
        else
          @developers[genre.name] += 1
        end
      end
    end
    @developers = Hash[@developers.sort_by {|_, v| v}.reverse]
    @developers.first(5)
  end
end
