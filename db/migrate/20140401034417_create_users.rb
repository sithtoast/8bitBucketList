class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name, null: false, default: ""
      t.string :last_name, null: false, default: ""
      t.text :bio
      t.string :twitter_handle
      t.string :twitch_handle
      t.string :giant_bomb_handle
      t.string :username, null: false, default: ""
      t.string :role, default: "member"

      t.timestamps
    end
  end
end
