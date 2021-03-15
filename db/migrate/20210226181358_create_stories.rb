class CreateStories < ActiveRecord::Migration[6.1]
  def change
    create_table :stories do |t|
      t.text :source
      t.text :author
      t.text :title
      t.text :description
      t.text :url
      t.text :url_to_image
      t.text :published_at
      t.text :content

      t.timestamps
    end
  end
end
