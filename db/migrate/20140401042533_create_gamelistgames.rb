class CreateGamelistgames < ActiveRecord::Migration
  def change
    create_table :gamelistgames do |t|
      t.integer :personal_rating
      t.integer :gamelist_id
      t.integer :game_id
      t.string  :status, default: "Not Played"
      t.text    :comment
      
      t.timestamps
    end
  end
end
