class OrdersController < ApplicationController
  before_action :authenticate_user

  def create 
    carted_products = current_user.carted_products.where(status: "carted")

      calculated_subtotal = 0 #product.price * params[:quantity]

      carted_products.each do |carted_product|
        calculated_subtotal += carted_product.quantity * carted_product.product.price 
      end 

      calculated_tax = calculated_subtotal * 0.09
      calculated_total = calculated_subtotal + calculated_tax


    order = Order.new(
      user_id: current_user.id,
      subtotal: params[:subtotal],
      tax: params[:tax],
      total: params[:total]
    )
      if order.save #happy path
        render json: order.as_json
      else #sad path
        render json: { errors: order.errors.full_messages}, status 422
      end 
    end 

    def show
      @order = Order.find_by(id: order_id)
      render json: order.as_json
    end 

    def index 
        @orders = current_user.orders
        render json: orders.as_json
    end 

end
