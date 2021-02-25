class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :sport_key
      t.string :sport_nice
      t.string :teams
      t.string :home_team
      t.string :commence_time
      t.string :sites
      t.integer :sites_count

      t.timestamps
    end
  end
end
