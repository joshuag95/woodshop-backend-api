class Cart < ApplicationRecord
  belongs_to :client
  has_many :cart_products
  has_many :products, through: :cart_products

  # def sum_total
  #   cart = self.object 
  #        prices = cart.cart_products.map{|p| p.product.price}
  #        render json: prices.sum
  #   end
 
end