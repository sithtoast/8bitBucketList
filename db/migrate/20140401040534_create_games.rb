class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :esrb
      t.integer :rating
      t.integer :userrating
      t.string :deck

      t.timestamps
    end
  end
end
