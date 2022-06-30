Rails.application.routes.draw do
  
  # Defines the root path route ("/")
  # root "articles#index"

  get "/products/:id" => "products#show"
  get "/products" => "products#index"

  post "/products" => "product#create"
  

end
