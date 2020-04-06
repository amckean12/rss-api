class AddsDisplayDateToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :display_date, :string, default: nil
  end
end
