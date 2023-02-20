# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Post.destroy_all
Place.destroy_all
Rails.logger.info "------------------------"
Rails.logger.info "----- FRESH START! -----"
Rails.logger.info "------------------------"


#Insert places
new_place = Place.new
new_place["name"] = "Mexico City"
new_place.save

new_place = Place.new
new_place["name"] = "Charleston"
new_place.save

new_place = Place.new
new_place["name"] = "Beijing"
new_place.save

new_place = Place.new
new_place["name"] = "Amsterdam"
new_place.save

#Insert posts
new_place = Place.find_by({ "name" => "Mexico City" })

new_post = Post.new
new_post["title"] = "Ate tacos"
new_post["description"] = "Long description - Tacos was nice"
new_post["posted_on"] = "2022-01-01"
new_post["place_id"] = new_place["id"]
new_post.save

new_post = Post.new
new_post["title"] = "Lisa and Jim's Wedding"
new_post["description"] = "Long description - Wedding was nice"
new_post["posted_on"] = "2022-01-01"
new_post["place_id"] = new_place["id"]
new_post.save

new_post = Post.new
new_post["title"] = "Ate tacos again"
new_post["description"] = "Long description - Tacos was even nicer"
new_post["posted_on"] = "2022-01-01"
new_post["place_id"] = new_place["id"]
new_post.save

new_place = Place.find_by({ "name" => "Charleston" })

new_post = Post.new
new_post["title"] = "Ate Dave's Hot Chicken"
new_post["description"] = "Long description - Chicken was nice"
new_post["posted_on"] = "2021-01-01"
new_post["place_id"] = new_place["id"]
new_post.save

new_place = Place.find_by({ "name" => "Beijing" })

new_post = Post.new
new_post["title"] = "Ate pho"
new_post["description"] = "Long description - Pho was nice"
new_post["posted_on"] = "2020-01-01"
new_post["place_id"] = new_place["id"]
new_post.save

new_place = Place.find_by({ "name" => "Amsterdam" })

new_post = Post.new
new_post["title"] = "Ate mushroom"
new_post["description"] = "Long description - Mushroom was nice"
new_post["posted_on"] = "2019-01-01"
new_post["place_id"] = new_place["id"]
new_post.save

posts = Post.all

puts "places: #{Place.all.count}" 
puts "posts: #{Post.all.count}" 


