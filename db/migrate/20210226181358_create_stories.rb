class CreateStories < ActiveRecord::Migration[6.1]
  def change
    create_table :stories do |t|
      t.string :source
      t.string :author
      t.string :title
      t.string :description
      t.string :url
      t.string :url_to_image
      t.string :published_at
      t.string :content

      t.timestamps
    end
  end
end
