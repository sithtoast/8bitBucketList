class CreateGamedevelopers < ActiveRecord::Migration
  def change
    create_table :gamedevelopers do |t|
      t.integer :game_id
      t.integer :developer_id

      t.timestamps
    end
  end
end
