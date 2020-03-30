class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :article_link
      t.datetime :published_date
      t.text :description
      t.string :image_present
      t.string :boolean

      t.timestamps
    end
  end
end
