class CartsController < ApplicationController

    def index 
        carts = Cart.all
        render json: carts
    end

    def show
        cart = Cart.find_by(id: params[:id])
        render json: cart
    end

    def confirm_cart
        cart = self.object
        cart.update(confirmed: true)
        render json: cart, status: :accepted
    end

    def sum_total
       cart = self.object 
            prices = cart.cart_products.map{|p| p.product.price}
            puts prices.sum
       end
end

# get all prices = Client.first.carts.first.cart_products.each{|p| puts p.product.price}