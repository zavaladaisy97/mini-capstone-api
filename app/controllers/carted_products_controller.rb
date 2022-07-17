class CartedProductsController < ApplicationController
  def create 
    carted_product = CartedProduct.new( 
      user_id: current_user.id, 
      product_id: params[:product_id],
      quantity: params[:quantity],
      order_id: params[:order_id],
      status: "carted"
    )

    if carted_product.save # happy path
      @carted_product = carted_product
      render json: carted_product.as_json 
    else # sad path
      render json: {errors: carted_product.errors.full_messages}, status: 422
    end 

  end 


  def index 
    @carted_products = current_user.carted_products 
    render json: carted_products.as_json
  end 



end
