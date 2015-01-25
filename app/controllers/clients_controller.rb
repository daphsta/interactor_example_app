class ClientsController < ApplicationController

  def index
    @clients = Client.all
    render json: @clients
  end

  def create
    res = AssociateSalesRepToClient.call(params)
    if res.success?
      render json: res.client
    else
      render json: res.message.to_s, status: 404
    end
  end
end
