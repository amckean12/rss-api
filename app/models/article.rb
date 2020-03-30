class Article < ApplicationRecord
    #Model Vaidations
    validates :title, presence: true
    validates :article_link, presence: true
    validates :published_date, presence: true
    validates :description, presence: true
    validates :image, presence: true
    validates :title, length: { maximum: 50 }
    validates :description, length: { maximum: 150 }
end
