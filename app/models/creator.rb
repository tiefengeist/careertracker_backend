class Creator < ApplicationRecord
  has_many :fan_pages
  has_many :users, through: :fan_pages
  has_many :contracts
  has_many :movies, through: :contracts
end
