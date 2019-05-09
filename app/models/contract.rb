class Contract < ApplicationRecord
  belongs_to :creator
  belongs_to :movie
  belongs_to :user

  validates :movie_id, uniqueness: { scope: [:creator_id, :user_id]}
end
