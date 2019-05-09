class User < ApplicationRecord
  has_secure_password
  has_many :fan_pages
  has_many :creators, through: :fan_pages
  has_many :contracts



  validates :username, presence: true
  validates :username, uniqueness: true
  # validates :password, presence: true
end
