class User < ApplicationRecord
  has_many :articles, dependent: :destroy
  validates :username, presence: true, length: { minimum: 3, maximum: 50 }, uniqueness: { case_sensitive: false }, format: { with: /\A[a-zA-Z0-9]+\z/, message: "only allows letters and numbers" }
  validates :password, presence: true, length: { minimum: 6, maximum: 50 }, confirmation: true
  validates :email, presence: true, length: { minimum: 3, maximum: 50 }, uniqueness: { case_sensitive: false }, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, message: "must be a valid email address" }
