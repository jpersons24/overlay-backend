class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.text :name
      t.belongs_to :league, null: false, foreign_key: true

      t.timestamps
    end
  end
end
