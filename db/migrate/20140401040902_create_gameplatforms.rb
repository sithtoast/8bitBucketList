class CreateGameplatforms < ActiveRecord::Migration
  def change
    create_table :gameplatforms do |t|
      t.integer :game_id
      t.integer :platform_id

      t.timestamps
    end
  end
end
