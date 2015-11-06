class ImagepostSerializer < ActiveModel::Serializer
  attributes :id, :image
  belongs_to :user_id
end
