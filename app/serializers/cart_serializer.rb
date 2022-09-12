class CartSerializer < ActiveModel::Serializer
  attributes :id, :sum_total
  has_one :order
end
