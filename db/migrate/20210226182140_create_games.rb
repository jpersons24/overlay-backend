class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.text :sport_key
      t.text :sport_nice
      t.text :away_team
      t.text :home_team
      t.text :commence_time

      t.timestamps
    end
  end
end
