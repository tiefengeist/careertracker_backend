class FanPage < ApplicationRecord
  belongs_to :user
  belongs_to :creator
end
