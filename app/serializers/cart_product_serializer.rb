class CartProductSerializer < ActiveModel::Serializer
  attributes :id
  has_one :product
  has_one :cart
end
