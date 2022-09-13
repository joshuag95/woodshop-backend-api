class ClientsController < ApplicationController

    def index 
        clients = Client.all
        render json: clients
    end

    def show
        client = Client.find_by(id: params[:id])
        render json: client
    end

    #create client with login
    #delete client
end
