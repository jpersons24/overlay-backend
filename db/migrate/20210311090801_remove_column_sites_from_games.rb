class RemoveColumnSitesFromGames < ActiveRecord::Migration[6.1]
  def change
    remove_column :games, :sites, :text
  end
end
