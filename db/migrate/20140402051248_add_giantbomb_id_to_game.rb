class AddGiantbombIdToGame < ActiveRecord::Migration
  def change
    add_column :games, :giantbomb_id, :integer
  end
end
