class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :image_url
  has_many :projects
  has_many :cart_items
end
