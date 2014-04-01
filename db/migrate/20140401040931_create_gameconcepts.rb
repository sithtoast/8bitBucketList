class CreateGameconcepts < ActiveRecord::Migration
  def change
    create_table :gameconcepts do |t|
      t.integer :game_id
      t.integer :concept_id

      t.timestamps
    end
  end
end
