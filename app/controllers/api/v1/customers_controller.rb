class Api::V1::CustomersController < ApplicationController
  def subscriptions
    @customer = Customer.find(params[:id])
    @subscriptions = @customer.subscriptions
    render json: SubscriptionSerializer.new(@subscriptions), status: :ok
  end

end