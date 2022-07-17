Rails.application.routes.draw do
  
  # Defines the root path route ("/")
  # root "articles#index"



  #products
  get "/products/:id" => "products#show"
  get "/products" => "products#index"
  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"

  #users
  post "/users" => "users#create"
  
  #sessions
  post "/sessions" => "sessions#create"

  #orders 
  get "/orders" => "orders#index"
  post "/orders" => "orders#create"
  get "/orders/:id" => "orders#show"


  #carted products 
  get "/carted_products" => "carted_products#index"
  post "/carted_products" => "carted_products#create"
end
