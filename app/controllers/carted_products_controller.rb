class CartedProductsController < ApplicationController
  def create 
    carted_product = CartedProduct.new( 
      user_id: current_user.id, 
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted"
    )

    if carted_product.save # happy path
      carted_products.update_all(status: "pruchased", order_id: order.id)
      render json: carted_product.as_json 
    else # sad path
      render json: {errors: carted_product.errors.full_messages}, status: 422
    end 

  end 


  def index 
    carted_products = current_user.carted_products.where(status: "carted")
    render json: carted_products.as_json
  end 



end
