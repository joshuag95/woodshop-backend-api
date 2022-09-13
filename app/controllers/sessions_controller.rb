class SessionsController < ApplicationController

    def create
        client = Client.find_by(name: params[:name])
        if client&.authenticate(params[:password])
          session[:client_id] = client.id
          render json: client, status: :ok
        else
          render json: "Invalid Credentials", status: :unauthorized
        end
    end

    def destroy
        session.delete :client_id
      end
end
