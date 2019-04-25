class Movie < ApplicationRecord
  has_many :contracts
  has_many :creators, through: :contracts
end
