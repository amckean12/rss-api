class User < ApplicationRecord
  has_secure_password

  #Model Validations
  validates :username, presence: true

  #Model Associations
  has_many :articles
  
end
