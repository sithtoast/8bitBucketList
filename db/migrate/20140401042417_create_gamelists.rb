class CreateGamelists < ActiveRecord::Migration
  def change
    create_table :gamelists do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
