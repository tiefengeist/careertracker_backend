class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password

  has_many :fan_pages
  has_many :creators, through: :fan_pages
  has_many :contracts
end
