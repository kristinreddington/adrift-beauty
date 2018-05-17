@user1 = User.create(:name => "Valerie Casperson", :username => "valeriecasperson@gmail.com", :password => "weekofwonders!")
@user2 = User.create(:name => "Tucker Jameson", :username => "tuckjames@gmail.com", :password => "Ilovewhiskey44")
@user3 = User.create(:name => "Mara Teigen", :username => "Mteigs@gmail.com", :password => "Chanel05")
@user4 = User.create(:name => "Aubrey Hill", :username => "aubreyhill@gmail.com", :password => "TabithaCat123")

@product1 = Product.create(brand: "Caudalie", name:"Beauty Elixir", user_id: 1, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT32kDlOCuT7N2Y7qHh1dczHX-GY2vOQWi8I8X373dvj74TUmvS0jV14Blv", note: "Love this product!")
@product2 = Product.create(brand: "Kora Organics", name:"Noni Glow Face Oil", user_id: 1, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEl4o51cmxTNp5eQcHTpXNbBOhEnODc04CR79UZ11PLBx81_4V5c67LXvb", note: "Would buy again")
@product3 = Product.create(brand: "Nourish Organic", name:"Rose Hip Oil Mist", user_id: 1, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIXVvh4L7vTafQ3YzlZ7dHJavyqRrkR5KRuliYUKE95BCrLuPd9KeMdS0", note: "Buying this next.")

@product4 = Product.create(brand: "Eminence", name: "Probiotic Cleanser", user_id: 2, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvTS-Q-61sXO-uEJOwz7m01c1lKdwSL96l5QPDGcNZdSA31PLU69LDqddH", note: "Wouldn't buy again")
@product5 = Product.create(brand: "Dr. Hauschka", name: "Eye Revive", user_id: 2, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrvtWji_WJuK6qXEAA3kej1dF3zEOFxbELktxHIRAjS3G60hrf_LqyBduaDQ", note: "On my list")
@product6 = Product.create(brand: "Kora Organics", name: "Hydrating Mask", user_id: 2, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4ngrHoxEg1LybRVsCsbkVXgKzEmtolh2O4fZHesGWrnYHZvs8QgfHhX9j", note: "Love it")

@product7 = Product.create(brand: "Alteya Organics", name: "Bulgarian Lavender Water", user_id: 3, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSIPGAXmG-rCwoVygBvzdMU6jJIygo8La3l344G6bo14sScWCn63ASlg", note: "10/10 would recommend")
@product8 = Product.create(brand: "Estelle & Thild", name: "BioHydrate All in One Tinted Moisturizer", user_id: 3, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSwwWa0K2-XvEQf-v5j_NdOJ0tAhvJiCf8DePluv6fnolD4D7NzvzM-vlf6Q", note: "Great for sensitive skin")
@product9 = Product.create(brand: "Kora Organics", name:"Noni Glow Face Oil", user_id: 3, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEl4o51cmxTNp5eQcHTpXNbBOhEnODc04CR79UZ11PLBx81_4V5c67LXvb", note: "Use on myself and my kids")

@product10 = Product.create(brand: "Evanhealy", name: "Rosehip Treatment Facial Serum", user_id: 4, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSltDFBsWlmV49jjKjko9UDV8tWMHvkKB2TJf_MgxmugH-C3PvREZuW_hw", note: "My favorite product for travel")
@product11 = Product.create(brand: "Weleda", name: "Skin Food", user_id: 4, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBMfx2KtGtwo0_xlrACoIEhU-KeuHdpJLVkcZeJZ4YaRd7aqVYzYiRhbVQ", note: "Can't wait to try this! Just ordered")
@product12 = Product.create(brand: "Ren skincare", name: "Atlantic Kelp and Magnesium Anti-Fatigue Body Wash", user_id: 4, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSCkXJXo0EmHIzETH4ic8KDYwXJoutsae_F6-oPOS5gIOLCTa_Z8JaxEbe", note: "Love this! Wish it wasn't so expensive :( ")
