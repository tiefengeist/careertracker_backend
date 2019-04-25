class Contract < ApplicationRecord
  belongs_to :creator
  belongs_to :movie
end
