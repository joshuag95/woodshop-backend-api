class ApplicationController < ActionController::API
  include ActionController::Cookies
  rescue_from ActiveRecord::RecordNotFound, with: :render_404

  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

 # before_action :authenticated?, :current_customer, :current_shopping_cart

  # def current_client
  #   if session[:client_id]
  #     @client = Client.find(session[:client_id])
  #   end
  # end

  # def current_shopping_cart
  #   if login?
  #     @cart = @client.orders.where(:confirmed? false) #add current order limit to 1
  #   end
  # end

  # def login? 
  #   !!current_client
  # end

  # def authenticated?
  #   redirect_to store_login_path unless login?
  # end

  


      private
      def
      render_unprocessable_entity_response(invalid)
              render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
      end

      def
        render_404(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: 404
      end

end

