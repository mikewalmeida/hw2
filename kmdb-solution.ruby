
# ------------------------------------------------------
# Delete existing data
# ------------------------------------------------------

Studio.destroy_all
Movie.destroy_all
Actor.destroy_all
Role.destroy_all

# ------------------------------------------------------
# Create new studio
# ------------------------------------------------------

new_studio = Studio.new
new_studio["name"] = "Warner Bros."
new_studio.save

# ------------------------------------------------------
# Find id for specific studio
# ------------------------------------------------------

warnerbros = Studio.find_by({ "name" => "Warner Bros." })

# ------------------------------------------------------
# Add movie catalog
# ------------------------------------------------------

new_movie = Movie.new
new_movie["title"] = "Batman Begins"
new_movie["year_released"] = 2005
new_movie["rated"] = "PG-13"
new_movie["studio_id"] = warnerbros["id"]
new_movie.save

new_movie2 = Movie.new
new_movie2["title"] = "The Dark Knight"
new_movie2["year_released"] = 2008
new_movie2["rated"] = "PG-13"
new_movie2["studio_id"] = warnerbros["id"]
new_movie2.save

new_movie3 = Movie.new
new_movie3["title"] = "The Dark Knight Rises"
new_movie3["year_released"] = 2012
new_movie3["rated"] = "PG-13"
new_movie3["studio_id"] = warnerbros["id"]
new_movie3.save

# ------------------------------------------------------
# Add actor list
# ------------------------------------------------------

new_actor = Actor.new
new_actor["name"] = "Christian Bale"
new_actor.save

new_actor2 = Actor.new
new_actor2["name"] = "Michael Caine"
new_actor2.save

new_actor3 = Actor.new
new_actor3["name"] = "Liam Neeson"
new_actor3.save

new_actor4 = Actor.new
new_actor4["name"] = "Katie Holmes"
new_actor4.save

new_actor5 = Actor.new
new_actor5["name"] = "Gary Oldman"
new_actor5.save

new_actor6 = Actor.new
new_actor6["name"] = "Heath Ledger"
new_actor6.save

new_actor7 = Actor.new
new_actor7["name"] = "Aaron Eckhart"
new_actor7.save

new_actor8 = Actor.new
new_actor8["name"] = "Maggie Gyllenhaal"
new_actor8.save

new_actor9 = Actor.new
new_actor9["name"] = "Tom Hardy"
new_actor9.save

new_actor10 = Actor.new
new_actor10["name"] = "Joseph Gordon-Levitt"
new_actor10.save

new_actor11 = Actor.new
new_actor11["name"] = "Anne Hathaway"
new_actor11.save

# ------------------------------------------------------
# Add roles associating actors and movies
# ------------------------------------------------------

new_role = Role.new
new_role["movie_id"] = Movie.find_by({ "title" => "Batman Begins" })["id"]
new_role["actor_id"] = Actor.find_by({ "name" => "Christian Bale" })["id"]
new_role["character_name"] = "Bruce Wayne"
new_role.save

new_role2 = Role.new
new_role2["movie_id"] = Movie.find_by({ "title" => "Batman Begins" })["id"]
new_role2["actor_id"] = Actor.find_by({ "name" => "Michael Caine" })["id"]
new_role2["character_name"] = "Alfred"
new_role2.save

new_role3 = Role.new
new_role3["movie_id"] = Movie.find_by({ "title" => "Batman Begins" })["id"]
new_role3["actor_id"] = Actor.find_by({ "name" => "Liam Neeson" })["id"]
new_role3["character_name"] = "Ra's Al Ghul"
new_role3.save

new_role4 = Role.new
new_role4["movie_id"] = Movie.find_by({ "title" => "Batman Begins" })["id"]
new_role4["actor_id"] = Actor.find_by({ "name" => "Katie Holmes" })["id"]
new_role4["character_name"] = "Rachel Dawes"
new_role4.save

new_role5 = Role.new
new_role5["movie_id"] = Movie.find_by({ "title" => "Batman Begins" })["id"]
new_role5["actor_id"] = Actor.find_by({ "name" => "Gary Oldman" })["id"]
new_role5["character_name"] = "Commissioner Gordon"
new_role5.save

new_role6 = Role.new
new_role6["movie_id"] = Movie.find_by({ "title" => "The Dark Knight" })["id"]
new_role6["actor_id"] = Actor.find_by({ "name" => "Christian Bale" })["id"]
new_role6["character_name"] = "Bruce Wayne"
new_role6.save

new_role7 = Role.new
new_role7["movie_id"] = Movie.find_by({ "title" => "The Dark Knight" })["id"]
new_role7["actor_id"] = Actor.find_by({ "name" => "Heath Ledger" })["id"]
new_role7["character_name"] = "Joker"
new_role7.save

new_role8 = Role.new
new_role8["movie_id"] = Movie.find_by({ "title" => "The Dark Knight" })["id"]
new_role8["actor_id"] = Actor.find_by({ "name" => "Aaron Eckhart" })["id"]
new_role8["character_name"] = "Harvey Dent"
new_role8.save

new_role9 = Role.new
new_role9["movie_id"] = Movie.find_by({ "title" => "The Dark Knight" })["id"]
new_role9["actor_id"] = Actor.find_by({ "name" => "Michael Caine" })["id"]
new_role9["character_name"] = "Alfred"
new_role9.save

new_role10 = Role.new
new_role10["movie_id"] = Movie.find_by({ "title" => "The Dark Knight" })["id"]
new_role10["actor_id"] = Actor.find_by({ "name" => "Maggie Gyllenhaal" })["id"]
new_role10["character_name"] = "Rachel Dawes"
new_role10.save

new_role11 = Role.new
new_role11["movie_id"] = Movie.find_by({ "title" => "The Dark Knight Rises" })["id"]
new_role11["actor_id"] = Actor.find_by({ "name" => "Christian Bale" })["id"]
new_role11["character_name"] = "Bruce Wayne"
new_role11.save

new_role12 = Role.new
new_role12["movie_id"] = Movie.find_by({ "title" => "The Dark Knight Rises" })["id"]
new_role12["actor_id"] = Actor.find_by({ "name" => "Gary Oldman" })["id"]
new_role12["character_name"] = "Commissioner Gordon"
new_role12.save

new_role13 = Role.new
new_role13["movie_id"] = Movie.find_by({ "title" => "The Dark Knight Rises" })["id"]
new_role13["actor_id"] = Actor.find_by({ "name" => "Tom Hardy" })["id"]
new_role13["character_name"] = "Bane"
new_role13.save

new_role14 = Role.new
new_role14["movie_id"] = Movie.find_by({ "title" => "The Dark Knight Rises" })["id"]
new_role14["actor_id"] = Actor.find_by({ "name" => "Joseph Gordon-Levitt" })["id"]
new_role14["character_name"] = "John Blake"
new_role14.save

new_role15 = Role.new
new_role15["movie_id"] = Movie.find_by({ "title" => "The Dark Knight Rises" })["id"]
new_role15["actor_id"] = Actor.find_by({ "name" => "Anne Hathaway" })["id"]
new_role15["character_name"] = "Selina Kyle"
new_role15.save


puts "Movies"
puts "======"
puts ""

movie_list = Movie.all

for movies in movie_list
    movie_title = movies["title"]
    movie_year = movies["year_released"]
    movie_rating = movies["rated"]
    movie_studio = Studio.find_by({ "id" => movies["studio_id"]})["name"]
    puts "#{movie_title} \t #{movie_year} \t #{movie_rating} \t #{movie_studio}"
end

puts ""
puts "Top Cast"
puts "========"
puts ""

cast_list = Role.all

for roles in cast_list
    cast_movie = Movie.find_by({ "id" => roles["movie_id"]})["title"]
    cast_actor = Actor.find_by({ "id" => roles["actor_id"]})["name"]
    cast_role = roles["character_name"]
    puts "#{cast_movie} \t #{cast_actor} \t #{cast_role}"
end
