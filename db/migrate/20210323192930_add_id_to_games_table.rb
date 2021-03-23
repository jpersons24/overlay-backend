class AddIdToGamesTable < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :id, :string
  end
end
