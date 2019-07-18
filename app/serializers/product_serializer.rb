class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :image1_url, :image2_url, :image3_url, :created_at
  belongs_to :project
end
