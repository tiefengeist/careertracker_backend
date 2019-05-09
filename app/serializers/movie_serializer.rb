class MovieSerializer < ActiveModel::Serializer
  attributes :id, :name, :year, :summary, :poster_img

  has_many :contracts
  has_many :creators, through: :contracts
end
