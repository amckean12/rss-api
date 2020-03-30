class ArticleSerializer < ActiveModel::Serializer
    attributes :id, :title, :article_link, :published_date, :description, :image
end