class Category < ApplicationRecord
  has_many :articles, dependent: :destroy
  validates :name, presence: true, length: { minimum: 3, maximum: 50 }, uniqueness: { case_sensitive: false }, format: { with: /\A[a-zA-Z0-9]+\z/, message: "only allows letters and numbers" }
end