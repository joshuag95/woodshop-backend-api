class ProductsController < ApplicationController

    def index 
        products = Product.all
        render json: products
    end

    def show
        product = Product.find_by(id: params[:id])
        render json: product
    end

    # def add_product_to_cart
    #     product = self.object
    #     client = Client.find(session[:client_id])
    #     CartProduct.create(product: product, client: client ), status: :created
    # end
        
end
