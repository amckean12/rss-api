class User < ApplicationRecord
    #Use Model Validations
    validates :username, presence: true
    validates :username, uniqueness: true
    validates :username, format: { 
        with: /\A[a-zA-Z0-9]+\z/,
        message: "username only allows letters and numbers"
    }
    validates :username, length: { maximum: 32 }
end
