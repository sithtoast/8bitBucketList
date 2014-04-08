class CreateGamelistgameplatforms < ActiveRecord::Migration
  def change
    create_table :gamelistgameplatforms do |t|
      t.integer :gamelistgame_id
      t.integer :platform_id

      t.timestamps
    end
  end
end
