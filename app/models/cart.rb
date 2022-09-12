class Cart < ApplicationRecord
  belongs_to :order
  has_many :cart_products
  has_many :products, through: :cart_products
end
