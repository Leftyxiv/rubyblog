class Article < ApplicationRecord
  validate :title, presence: true, length: { minimum: 5, maximum: 100 }
  validate :description, presence: true, length: { minimum: 10, maximum: 500 }
end