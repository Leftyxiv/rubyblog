class Category < ApplicationRecord
  has_many :article_categories
  has_many :articles, through :article_categories
  validates :name, presence: true, length: { minimum: 3, maximum: 50 }, uniqueness: { case_sensitive: false }, format: { with: /\A[a-zA-Z0-9]+\z/, message: "only allows letters and numbers" }
end