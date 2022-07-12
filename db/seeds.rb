
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
supplier = Supplier.create(name: "Prada", email: "prada@test.com", phone_number: "3129999999")
supplier = Supplier.create(name: "Miu Miu", email: "miumiu@test.com", phone_number: "7735555555")
supplier = Supplier.create(name: "Fendi", email: "fendi@test.com", phone_number: "6309999999")


Product.create(name: "Fendi Multicolor Viscose Dress", price: 1850, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuzI8H95Jm68ujYk-A_8xkIIMMK9_oNX1i2w&usqp=CAU", description: "Short close-fitting dress with high collar and long sleeves. Embellished with ribbed edges. Made of lightweight viscose knit with pastel-shades inlay. The Stocking Girls graphics are a tribute to the visionary sensitivity of the fashion illustrator Antonio Lopez: recalling the atmospheres of the disco era and an expression of the free and universal femininity that distinguishes the Fendi spirit.").
Product.create(name: "Miu Sassy Embellished Satin Handbag", price: 3300, image_url: "https://www.miumiu.com/content/dam/miumiu_products/5/5BA/5BA200/2DOEF0236/5BA200_2DOE_F0236_V_GR2_SLF.png/jcr:content/renditions/cq5dam.web.hf8f8f8.800.800.jpg", description: "Simple shapes, sophisticated details. This satin handbag is decorated and illuminated with crystals that create a modern geometric motif.")
Product.create(name: "Tulle Minidress", price: 7200, image_url: "https://www.miumiu.com/content/dam/miumiu_products/M/MF4/MF4283/1YPUF0002/MF4283_1YPU_F0002_SLF.png/jcr:content/renditions/cq5dam.web.hf8f8f8.800.800.jpg", description: "A sparkling vocabulary, inspired by the language of eveningwear. This light tulle dress full of sophisticated details embodies the romantic spirit of Miu Miu. Its silhouette recalls the ballet world, while the edges are illuminated with precious details.")

puts "done"

