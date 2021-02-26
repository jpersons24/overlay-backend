class CreateFavoritesLists < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites_lists do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :story, null: false, foreign_key: true

      t.timestamps
    end
  end
end
