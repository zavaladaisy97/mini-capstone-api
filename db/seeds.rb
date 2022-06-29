
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

product = Product.create(name: "laptop", price: 1000, img_url: "https://cdn.mos.cms.futurecdn.net/7nVbxTjS6m6J3H9EnHfLVh.jpg", description: "used for class")

product = Product.create(name: "charger", price: 150, img_url: "https://m.media-amazon.com/images/I/51GPMOEWwnL._AC_SY355_.jpg", description: "used to charge the laptop")

product = Product.create(name: "case", price: 75, img_url: "https://ae01.alicdn.com/kf/H324b51b3de3744afa8555909b2307436U/Laptop-Sleeve-For-Macbook-Air-13-Case-M1-Pro-Retina-13-3-11-14-16-15.jpg_Q90.jpg_.webp", description: "used to protect the laptop")

product = Product.create(name: "headphones", price: 325, img_url: "https://www.bhphotovideo.com/images/images2500x2500/apple_mgyj3am_a_airpods_max_silver_1610234.jpg", description: "noise cancellation headphones, connect using bluetooth")