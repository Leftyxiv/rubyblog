class Article < ApplicationRecord
  validate :title, presence: true
  validate :description, presence: true
end