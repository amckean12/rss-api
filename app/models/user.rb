class User < ApplicationRecord
  has_secure_password

  #Model Validations


  #Model Associations
  has_many :articles
  
end
