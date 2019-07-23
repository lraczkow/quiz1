class Book < ApplicationRecord
  validates :title, length: {minimum: 3}
  validates :author, presence: true
end
