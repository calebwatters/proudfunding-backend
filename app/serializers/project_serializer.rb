class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :company_name, :company_url, :image1_url, :image2_url, :image3_url, :funding_goal, :current_funding
  belongs_to :user
  has_many :products
end
