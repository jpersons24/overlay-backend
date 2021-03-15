class RemoveColumnFromStories < ActiveRecord::Migration[6.1]
  def change
    remove_column :stories, :url_to_image, :text
    add_column :stories, :urlToImage, :text
  end
end
