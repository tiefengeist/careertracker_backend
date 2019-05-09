class ContractSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :creator_id, :movie_id, :film_comment

  belongs_to :user
  belongs_to :movie
  belongs_to :creator
end
