class CreatorSerializer < ActiveModel::Serializer
  attributes :id, :name, :specialty, :birthday, :deathday, :bio, :avg_rating, :user_rating, :img, :user_comment

  has_many :fan_pages
  has_many :users, through: :fan_pages
end
