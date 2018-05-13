@user1 = User.create(:username => "Mr_Bigglesworth", :password => "katzen134$")
@user2 = User.create(:username => "Jamestown_Bro", :password => "townies123$")
@user3 = User.create(:username => "MichaelScott567", :password => "kittens123$")
@user4 = User.create(:username => "Yolo_Trump69", :password => "fakehair123%")
@user5 = User.create(:username => "SmoothCriminal", :password => "criminal123$")
@user6 = User.create(:username => "DolaMeister", :password => "password123$")

@brooklyn = Borough.create(name: "Brooklyn")
@bronx = Borough.create(name: "Bronx")
@manhattan = Borough.create(name: "Manhattan")
@queens = Borough.create(name: "Queens")
@staten_island = Borough.create(name: "Staten Island")

Category.create(title: "Ben and Jerries or Bust!", business: "Key Food", location: "60 St. Michael's Place", content: "My girlfriend and I were rollerblading at around 10pm. We went to the Flatbush Food Coop but had little success. A few blocks south there is a supermarket that throws away perfectly good food at closing time: around 11pm. We scored 10 cartons of Ben and Jerries and because it was late not many people took pictures of us!", date: "2016-06-29", borough_id: @staten_island.id, user_id: @user1.id)

Category.create(title: "Organic Baby Spinach in Bushwick", business: "Organic Mart", location: "455 Steinway St.", content: "We were walking around at around 10PM and we found some freshly tossed garbage bags filled with 10 sealed packages of organic baby spinach. I can't even afford this stuff brand new in the store. Salad is served for the next month!", date: "2016-08-21", borough_id: @brooklyn.id, user_id: @user2.id)

Category.create(title: "Organic Vegan Dark Chocolate", business: "Cindy's Organic Grocery Store", location: "122 Church Ave.", content: "At around 8pm, employees at this grocery store start taking out the trash. Some of the food is expired by a few days or weeks but it is still in good condition. We hit the jackpot with about 20 bars of vegan dark chocolate made in Chile. Each bar still had the price tag: $6 dollars per bar!", date: "2015-12-15", borough_id: @brooklyn.id, user_id: @user3.id)

Category.create(title: "Makeup Madness!", business: "Sephora", location: "Herald Square, NY, NY", content: "This was the easiest dive ever! I was shopping at Sephora and employees began filling up barbage bags right in front of me. It wasn't the most professional thing I've ever seen but whatever. I followed them outside and swan dived into the garbage. I scored $200 worth of makeup. I will never be ugly again!", date: "2016-12-12", borough_id: @manhattan.id, user_id: @user3.id)

Category.create(title: "Magical Stash of Books", business: "Strand Bookstore", location: "Union Sq. NY, NY", content: "Everybody knows that Strand has the discount books section in front of their store at all times. However, if you open a book called 'Open Sesame' a secret hatch will open in the sidewalk. When you go down the hatch you will have your dreams answered and there are free books!", date: "2016-04-13", borough_id: @manhattan.id, user_id: @user4.id)

Category.create(title: "Organic Cashews Chaos", business: "Flatbush Food Coop", location: "232 Mongoose Lane", content: "This dive will require guts and is of a legally dubious nature. List of items required: wirecutters, sodering iron, bolt-cutters, balls of steel. When the pitbulls finish their rounds cut through the outer fence. You will then need to use the sodering iron to cut a cut a hole in the next fence. Finally, you will see a gold dumpster up ahead. Use the bolt-cutters and you will be rewarded by an entire dumpster filled with Organic Icelandic cashews. I wasn't aware that cashews grew in Iceland, but I guess you learn something new every day!", date: "2015-08-21", borough_id: @brooklyn.id, user_id: @user1.id)
