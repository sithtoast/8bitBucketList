class CreateGamepublishers < ActiveRecord::Migration
  def change
    create_table :gamepublishers do |t|
      t.integer :game_id
      t.integer :publisher_id

      t.timestamps
    end
  end
end
