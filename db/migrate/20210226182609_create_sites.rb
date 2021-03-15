class CreateSites < ActiveRecord::Migration[6.1]
  def change
    create_table :sites do |t|
      t.text :site_key
      t.text :site_nice
      t.text :last_update
      t.text :odds

      t.timestamps
    end
  end
end
