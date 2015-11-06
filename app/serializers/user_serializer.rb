class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :access_token, :email
end
