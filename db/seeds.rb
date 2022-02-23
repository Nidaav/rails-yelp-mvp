# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "japanese" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London", category: "japanese" }
miam_sushi =  { name: "Miam Sushi", address: "56A Shoreditch High St, London", category: "japanese" }
chez_yian_fu =  { name: "Chez Yian Fu", address: "Le Mans", category: "chinese" }
hot_sushi_hihi_ce_fo =  { name: "Hot Sushi hihi ce fo", address: "Roubaix", category: "japanese" }
pizza_luigi =  { name: "Pizza Luigi", address: "Paris", category: "italian" }

[ dishoom, pizza_east, miam_sushi, chez_yian_fu, hot_sushi_hihi_ce_fo, pizza_luigi].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
