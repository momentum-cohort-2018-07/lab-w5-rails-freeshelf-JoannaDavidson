class User < ApplicationRecord
    has_secure_password
    has_many :books
    validates :name, :email, presence: true
end
