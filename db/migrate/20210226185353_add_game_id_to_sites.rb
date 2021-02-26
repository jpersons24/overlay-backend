class AddGameIdToSites < ActiveRecord::Migration[6.1]
  def change
    add_column :sites, :game_id, :integer
  end
end
