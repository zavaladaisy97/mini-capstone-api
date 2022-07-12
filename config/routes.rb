Rails.application.routes.draw do
  
  # Defines the root path route ("/")
  # root "articles#index"

  get "/products/:id" => "products#show"
  get "/products" => "products#index"

  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"

  
end
