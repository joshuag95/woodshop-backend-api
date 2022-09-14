class ApplicationController < ActionController::API
  include ActionController::Cookies
  rescue_from ActiveRecord::RecordNotFound, with: :render_404

  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

 # before_action :authenticated?, :current_customer, :current_shopping_cart

  def current_client
      Client.find_by(id: session[:user_id])
  end
  
  def authenicate_user
    render json: {errors: "Not Authorized"}, status: :unauthorized
    unless current_client
  end
end

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

