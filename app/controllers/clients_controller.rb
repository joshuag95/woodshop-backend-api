class ClientsController < ApplicationController

    def index 
        clients = Client.all
        render json: clients
    end

    def show
        if current_client
            render json: current_client
        else
            render json: "no current session stored", status: :unauthorized
        end
    end

    def create
        client = Client.create(client_params)
      if client.valid?
        session[:client_id] = client.id # this is the piece that logs a client in and keeps track of users info in subsequent requests.
        render json: client, status: :ok
      else
        render json: client.errors.full_messages, status: :unprocessable_entity
    end

  end

  private

  def client_params
    params.permit(:name, :email, :phone, :address, :password, :password_confirmation)
  end
end
