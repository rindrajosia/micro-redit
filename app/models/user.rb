class User < ApplicationRecord
  has_many :posts
  validates :username, length: { in: 4..12 }, presence: true, uniqueness: true
  validates :email, format: { with: /\A(\S+)@(.+)\.(\S+)\z/ }, presence: true, uniqueness: true
  validates :password, length: { in: 6..16 }, presence: true, uniqueness: true
end
