class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.belongs_to :game, null: false, foreign_key: true
      t.belongs_to :league, null: false, foreign_key: true

      t.timestamps
    end
  end
end
