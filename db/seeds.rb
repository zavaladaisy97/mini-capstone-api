
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

product = Product.create(name: "laptop", price: 1000, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQf2D5Ta2A43DdNqUrvPYTp76hUjMnv6TnArQ&usqp=CAU", description: "used for class")

product = Product.create(name: "charger", price: 150, image_url: "https://m.media-amazon.com/images/I/51GPMOEWwnL._AC_SY355_.jpg", description: "used to charge the laptop")

product = Product.create(name: "tech backpack", price: 75, image_url: "https://m.media-amazon.com/images/I/71wGtW0-NnL._AC_SX425_.jpg", description: "used to protect the laptop")

product = Product.create(name: "headphones", price: 325, image_url: "https://www.bhphotovideo.com/images/images2500x2500/apple_mgyj3am_a_airpods_max_silver_1610234.jpg", description: "noise cancellation headphones, connect using bluetooth")