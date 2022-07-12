require "http"

response = HTTP.get("http://localhost:3000/all_products")

products = JSON.parse(response.body)

pp products 