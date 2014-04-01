class CreateGamegenres < ActiveRecord::Migration
  def change
    create_table :gamegenres do |t|
      t.integer :game_id
      t.integer :genre_id

      t.timestamps
    end
  end
end
