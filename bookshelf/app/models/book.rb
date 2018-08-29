class Book < ApplicationRecord
    belongs_to :user, optional: true
    validates :title, presence: true
end
