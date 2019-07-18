class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
  has_many :projects
  has_many :cart_items
end
