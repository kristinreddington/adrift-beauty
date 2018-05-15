@user1 = User.create(:username => "JanePatty", :password => "katzen134$")
@user2 = User.create(:username => "Jamestown_Bro", :password => "townies123$")
@user3 = User.create(:username => "MichaelScott567", :password => "kittens123$")
@user4 = User.create(:username => "Yolo_Trump69", :password => "fakehair123%")
@user5 = User.create(:username => "SmoothCriminal", :password => "criminal123$")
@user6 = User.create(:username => "DolaMeister", :password => "password123$")

@product1 = Product.create(brand: "Caudalie", name:"Beauty Elixir", user_id: 1, category_id: 9, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT32kDlOCuT7N2Y7qHh1dczHX-GY2vOQWi8I8X373dvj74TUmvS0jV14Blv")
@product2 = Product.create(brand: "Kora Organics", name:"Noni Glow Face Oil", user_id: 2, category_id: 12, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEl4o51cmxTNp5eQcHTpXNbBOhEnODc04CR79UZ11PLBx81_4V5c67LXvb")
@product3 = Product.create(brand: "Nourish Organic", name:"Rose Hip Oil Mist", user_id: 3, category_id: 9, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIXVvh4L7vTafQ3YzlZ7dHJavyqRrkR5KRuliYUKE95BCrLuPd9KeMdS0")
@product4 = Product.create(brand: "Eminence", name: "Probiotic Cleanser", user_id: 4, category_id: 1, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvTS-Q-61sXO-uEJOwz7m01c1lKdwSL96l5QPDGcNZdSA31PLU69LDqddH")
@product5 = Product.create(brand: "Dr. Hauschka", name: "Eye Revive", user_id: 5, category_id: 7, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrvtWji_WJuK6qXEAA3kej1dF3zEOFxbELktxHIRAjS3G60hrf_LqyBduaDQ")
@product6 = Product.create(brand: "Kora Organics", name: "Hydrating Mask", user_id: 6, category_id: 4, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4ngrHoxEg1LybRVsCsbkVXgKzEmtolh2O4fZHesGWrnYHZvs8QgfHhX9j")
@product7 = Product.create(brand: "Alteya Organics", name: "Bulgarian Lavender Water", user_id: 5, category_id: 9, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSIPGAXmG-rCwoVygBvzdMU6jJIygo8La3l344G6bo14sScWCn63ASlg")
@product8 = Product.create(brand: "Estelle & Thild", name: "BioHydrate All in One Tinted Moisturizer", user_id: 1, category_id: 8, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSwwWa0K2-XvEQf-v5j_NdOJ0tAhvJiCf8DePluv6fnolD4D7NzvzM-vlf6Q")
@product9 = Product.create(brand: "Kora Organics", name:"Noni Glow Face Oil", user_id: 3, category_id: 12, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEl4o51cmxTNp5eQcHTpXNbBOhEnODc04CR79UZ11PLBx81_4V5c67LXvb")

@review1 = Review.create(name: "Caudalie Beauty Elixir", content: "Very minty and refreshing. Higher side of the price range for the size.", date: "2018-01-15", user_id: 1, category_id: 9)
@review2 = Review.create(name: "Got the Noni Glow", content: "In LOVE with this product! I mix it with my moisturizer twice a day and have noticed visible improvements in the suppleness/elasticity of my skin.", date: "2018-03-17", user_id: 2, category_id: 12)
@review3 = Review.create(name: "Best mist!", content: "I use this mist as a face moisturizer as it contains rose hip oil, but the spray bottle is nice when I want to use it on my legs or body too!", date: "2018-04-20", user_id: 3, category_id: 9)
@review4 = Review.create(name: "Eminence cleanser", content: "This product is great for balancing the skin's natural ph levels with its probiotic formula. Made from all orgnic ingredients too!", date: "2018-04-21", user_id: 4, category_id: 1)
@review5 = Review.create(name: "My eyes are revived!", content: "I used this eye serum for travel since the plane's air is always stale and my eyes get dehydrated. I land feeling rejuvinated and feeling fresh!", date: "2018-05-03", user_id: 5, category_id: 7)
@review6 = Review.create(name: "Kora Mask", content: "Only complaint is the size is very small for the price. It also took over 2 weeks to deliver. Besides that, I could use this mask every day and it would still make my skin soft.", date: "2018-01-13", user_id: 6, category_id: 4)
@review7 = Review.create(name: "Luxurious experience", content: "I usually buy this brand's rose water but decided to opt for something different. I use it before bed and the lavender makes me calm and peaceful before drifting off. I wake up with my skin feeling hydrated too!", date: "2018-02-16", user_id: 5, category_id: 9)
@review8 = Review.create(name: "Best tinted moisturizer", content: "I discovered this brand on my usual visit to Gothenburg to visit family. I love that this company has Scandanadian roots - they use the purest, most natural ingredients.", date: "2018-03-24", user_id: 1, category_id: 8)
@review9 = Review.create(name: "I love noni!", content: "This oil is perfect for all skin types! I'm prone to break-outs but this oil actually balances my skin and gives me a healthy glow.", date: "2018-05-10", user_id: 3, category_id: 12)

@productreview1 = ProductReview.create(user_id: 1, product_id: 1, review_id: 1)
@productreview2 = ProductReview.create(user_id: 2, product_id: 2, review_id: 2)
@productreview3 = ProductReview.create(user_id: 3, product_id: 3, review_id: 3)
@productreview4 = ProductReview.create(user_id: 4, product_id: 4, review_id: 4)
@productreview5 = ProductReview.create(user_id: 5, product_id: 5, review_id: 5)
@productreview6 = ProductReview.create(user_id: 6, product_id: 6, review_id: 6)
@productreview7 = ProductReview.create(user_id: 5, product_id: 7, review_id: 7)
@productreview8 = ProductReview.create(user_id: 1, product_id: 8, review_id: 8)
@productreview9 = ProductReview.create(user_id: 3, product_id: 2, review_id: 9)

Category.create(name: "Cleansers")

Category.create(name: "Moisturizers")

Category.create(name: "Exfoliators/Scrubs")

Category.create(name: "Masks/peels")

Category.create(name: "Treatments")

Category.create(name: "Lotions/Body oils")

Category.create(name: "Eye creams")

Category.create(name: "Tinted Creams/Tanning lotions")

Category.create(name: "Toners/Mists")

Category.create(name: "Lips")

Category.create(name: "Essential Oils/Aromatherapy")

Category.create(name: "Serums/Anti-Aging")
