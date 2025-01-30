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
Zombie.destroy_all
Booking.destroy_all

User.create(email:"fabrice@gmail.com", password:"password")

Zombie.create(name:"Gnasher", price:"150RS per day", description:"A hungry zombie that bites anything that moves.", skill:"Poisonous Bite", height:"1m75", race:"Ghoul", user:User.last)
Zombie.create(name:"Rotface", price:"200RS per day", description:"A corpse in advanced decay, but still dangerous.", skill:"Acidic Toxins", height:"1m80", race:"Undead", user:User.last)
Zombie.create(name:"Bonecrusher", price:"300RS per day", description:"A giant zombie capable of crushing its enemies.", skill:"Brute Strength", height:"2m10", race:"Mutant Zombie", user:User.last)



User.create(email:"vita@gmail.com", password:"password")

Zombie.create(name:"Whisper", price:"120RS per day", description:"A stealthy zombie that attacks without warning.", skill:"Partial Invisibility", height:"1m68", race:"Flesh Phantom", user:User.last)
Zombie.create(name:"Spitter", price:"220RS per day", description:"Spits corrosive acid at its enemies.", skill:"Acid Spit", height:"1m73", race:"Mutated Zombie", user:User.last)



User.create(email:"florent@gmail.com", password:"password")

Zombie.create(name:"Pestilence", price:"250RS per day", description:"A zombie carrying deadly diseases.", skill:"Plague Cloud", height:"1m90", race:"Infected", user:User.last)
Zombie.create(name:"Graveborn", price:"275RS per day", description:"An undead being summoned by occult forces.", skill:"Spectral Summoning", height:"1m85", race:"Necromantic Zombie", user:User.last)
Zombie.create(name:"Brainless", price:"80RS per day", description:"A dumb but persistent zombie.", skill:"Enhanced Endurance", height:"1m78", race:"Classic Zombie", user:User.last)



User.create(email:"arielle@gmail.com", password:"password")

Zombie.create(name:"Crawler", price:"100RS per day", description:"A crawling zombie that clings to walls.", skill:"Fast Climbing", height:"1m40", race:"Crawling Zombie", user:User.last)
Zombie.create(name:"Lurker", price:"190RS per day", description:"Hides in the shadows and pounces on its prey.", skill:"Surprise Attack", height:"1m70", race:"Hunter Zombie", user:User.last)
