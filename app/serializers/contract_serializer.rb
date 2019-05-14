class ContractSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :creator_id, :movie_id, :film_comment

  has_one :user
  has_one :movie
  has_one :creator
end
