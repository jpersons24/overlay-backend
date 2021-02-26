class CreateSites < ActiveRecord::Migration[6.1]
  def change
    create_table :sites do |t|
      t.string :site_key
      t.string :site_nice
      t.string :last_update
      t.string :odds

      t.timestamps
    end
  end
end
