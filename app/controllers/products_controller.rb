class ProductsController < ApplicationController
  
  def index
    @products = Product.all
    render template: "products/index"
  end 

  def show 
    @product = Product.find_by(id: product_id)
    render template: "products/show"
  end 

  def create 
    product = Product.new( 
      name: params[:name], 
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description]
    )

    if product.save # happy path
      @product = product
      render template: "products/show"
    else # sad path
      render json: {errors: product.errors.full_messages}, status: 422
    end 

  end 

  def update
    product_id = params["id"]
    product = Product.find_by(id: product_id)

    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.image_url = params[:image_url] || product.image_url
    product.description = params[:description] || product.description

    if product.save # happy path
      @product = product
      render template: "products/show"
    else # sad path
      render json: {errors: product.errors.full_messages}, status: 422
    end 

  end

  def destroy
    product_id = params[:id]
    product = Product.find_by(id: product_id)
    product.destroy
    render json: {message: "Successfully deleted!"}
  end
end