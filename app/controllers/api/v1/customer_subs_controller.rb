class Api::V1::CustomerSubsController < ApplicationController
  def create
    @customer_sub = CustomerSub.new(customer_sub_params)

    if @customer_sub.save
      render json: CustomerSubSerializer.new(@customer_sub), status: :created
    else
      render json: @customer_sub.errors, status: :unprocessable_entity
    end
  end

  private

  def customer_sub_params
    params.require(:customer_sub).permit(:customer_id, :subscription_id)
  end
end