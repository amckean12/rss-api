class RemoveImagePresentAndBooleanFromArticles < ActiveRecord::Migration[5.2]
  def change
    remove_column :articles, :image_present, :string
    remove_column :articles, :boolean, :string
    add_column :articles, :image, :boolean
  end
end
