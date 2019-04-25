class User < ApplicationRecord
  has_many :fan_pages
  has_many :creators, through: :fan_pages
  has_many :lists


  validates :username, presence: true
  validates :username, uniqueness: true
  validates :password, presence: true
end
