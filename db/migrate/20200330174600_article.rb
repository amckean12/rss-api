class Article < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :img_src, :string, default: nil 
    add_column :articles, :img_alt, :string, default: nil
  end
end
