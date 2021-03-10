class AddSitesColumnToGames < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :sites, :string
  end
end
