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
        cart = Cart.find_by(id: params[:id])
        cart.update(confirmed: true)
        render json: cart, status: :accepted
    end
    
    def display_sum
        cart = Cart.find_by(id: params[:id])
        render json: cart.sum_total, status: :ok
    end
 

end

# get all prices = Client.first.carts.first.cart_products.each{|p| puts p.product.price}