class FanPageSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :creator_id
end
