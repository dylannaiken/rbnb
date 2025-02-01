# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.destroy_all
Booking.destroy_all
Zombie.destroy_all

User.create(username: "Dorian", email:"dorian@admin.com", password:"password")
User.create(username: "Dylan", email:"dylan@admin.com", password:"password")
User.create(username: "Memphis", email:"memphis@admin.com", password:"password")
User.create(username: "Dilshad", email:"dilshad@admins.com", password:"password")


User.create(username: "Fabrice", email:"fabrice@gmail.com", password:"password")

zombie1 = Zombie.create(name:"Gnasher", price:"150", description:"A hungry zombie that bites anything that moves.", skill:"Poisonous Bite", height:"1m75", race:"Ghoul", user:User.last)
zombie2 = Zombie.create(name:"Rotface", price:"200", description:"A corpse in advanced decay, but still dangerous.", skill:"Acidic Toxins", height:"1m80", race:"Undead", user:User.last)
zombie3 = Zombie.create(name:"Bonecrusher", price:"300", description:"A giant zombie capable of crushing its enemies.", skill:"Brute Strength", height:"2m10", race:"Mutant Zombie", user:User.last)

puts "- 3..."

User.create(username: "Vita", email:"vita@gmail.com", password:"password")

zombie4 = Zombie.create(name:"Whisper", price:"120", description:"A stealthy zombie that attacks without warning.", skill:"Partial Invisibility", height:"1m68", race:"Flesh Phantom", user:User.last)
zombie5 = Zombie.create(name:"Spitter", price:"220", description:"Spits corrosive acid at its enemies.", skill:"Acid Spit", height:"1m73", race:"Mutated Zombie", user:User.last)

puts "- 5..."

User.create(username: "Florent", email:"florent@gmail.com", password:"password")

zombie6 = Zombie.create(name:"Pestilence", price:"250", description:"A zombie carrying deadly diseases.", skill:"Plague Cloud", height:"1m90", race:"Infected", user:User.last)
zombie7 = Zombie.create(name:"Graveborn", price:"275", description:"An undead being summoned by occult forces.", skill:"Spectral Summoning", height:"1m85", race:"Necromantic Zombie", user:User.last)
zombie8 = Zombie.create(name:"Brainless", price:"80", description:"A dumb but persistent zombie.", skill:"Enhanced Endurance", height:"1m78", race:"Classic Zombie", user:User.last)

puts "- 8..."

User.create(username: "Arielle", email:"arielle@gmail.com", password:"password")

zombie9 = Zombie.create(name:"Crawler", price:"100", description:"A crawling zombie that clings to walls.", skill:"Fast Climbing", height:"1m40", race:"Crawling Zombie", user:User.last)
zombie10 = Zombie.create(name:"Lurker", price:"190", description:"Hides in the shadows and pounces on its prey.", skill:"Surprise Attack", height:"1m70", race:"Hunter Zombie", user:User.last)

puts "- 10"
puts "- Seeds created"

