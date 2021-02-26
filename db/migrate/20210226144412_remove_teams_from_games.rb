class RemoveTeamsFromGames < ActiveRecord::Migration[6.1]
  def change
    remove_column :games, :teams, :string
    add_column :games, :away_team, :string
  end
end
