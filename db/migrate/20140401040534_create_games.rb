class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :esrb
      t.integer :rating
      t.integer :userrating
      t.string :developer
      t.string :publisher

      t.timestamps
    end
  end
end
