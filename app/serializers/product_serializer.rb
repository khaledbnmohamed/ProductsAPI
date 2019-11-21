class ProductSerializer < ActiveModel::Serializer
  attributes :title, :price, :created_at
end
