class Cart < ApplicationRecord
  belongs_to :client
  has_many :cart_products
  has_many :products, through: :cart_products
  end
