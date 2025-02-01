Booking.destroy_all
User.destroy_all
Zombie.destroy_all

User.create(username: "Dorian", email: "dorian@admin.com", password: "password")
User.create(username: "Dylan", email: "dylan@admin.com", password: "password")
User.create(username: "Memphis", email: "memphis@admin.com", password: "password")
User.create(username: "Dilshad", email: "dilshad@admins.com", password: "password")
User.create(username: "Fabrice", email: "fabrice@gmail.com", password: "password")

file1 = URI.parse("https://res.cloudinary.com/dz68ybmap/image/upload/v1738406095/gnasher.png").open
zombie1 = Zombie.create(name: "Gnasher", price: 150, address: "507 rue de Chauny, Paris", description: "A hungry zombie that bites anything that moves.", skill: "Poisonous Bite", height: "1m75", race: "Ghoul", user: User.last)
zombie1.photo.attach(io: file1, filename: "gnasher.png", content_type: "image/png")
zombie1.save

file2 = URI.parse("https://res.cloudinary.com/dz68ybmap/image/upload/v1738406012/Rotface.png").open
zombie2 = Zombie.create(name: "Rotface", price: 200, address: "23 avenue des Ombres, Lyon", description: "A corpse in advanced decay, but still dangerous.", skill: "Acidic Toxins", height: "1m80", race: "Undead", user: User.last)
zombie2.photo.attach(io: file2, filename: "rotface.png", content_type: "image/png")
zombie2.save

file3 = URI.parse("https://res.cloudinary.com/dz68ybmap/image/upload/v1738406330/Boneless.png").open
zombie3 = Zombie.create(name: "Bonecrusher", price: 300, address: "89 boulevard du Cauchemar, Marseille", description: "A giant zombie capable of crushing its enemies.", skill: "Brute Strength", height: "2m10", race: "Mutant Zombie", user: User.last)
zombie3.photo.attach(io: file3, filename: "bonecrusher.png", content_type: "image/png")
zombie3.save

puts "- 3..."

User.create(username: "Vita", email: "vita@gmail.com", password: "password")

file4 = URI.parse("https://res.cloudinary.com/dz68ybmap/image/upload/v1738405768/Whisper.png").open
zombie4 = Zombie.create(name: "Whisper", price: 120, address: "17 impasse des Ténèbres, Toulouse", description: "A stealthy zombie that attacks without warning.", skill: "Partial Invisibility", height: "1m68", race: "Flesh Phantom", user: User.last)
zombie4.photo.attach(io: file4, filename: "whisper.png", content_type: "image/png")
zombie4.save

file5 = URI.parse("https://res.cloudinary.com/dz68ybmap/image/upload/v1738405638/spitter.png").open
zombie5 = Zombie.create(name: "Spitter", price: 220, address: "5 rue des Brumes, Lille", description: "Spits corrosive acid at its enemies.", skill: "Acid Spit", height: "1m73", race: "Mutated Zombie", user: User.last)
zombie5.photo.attach(io: file5, filename: "spitter.png", content_type: "image/png")
zombie5.save

puts "- 5..."

User.create(username: "Florent", email: "florent@gmail.com", password: "password")

file6 = URI.parse("https://res.cloudinary.com/dz68ybmap/image/upload/v1738405958/pestilence.png").open
zombie6 = Zombie.create(name: "Pestilence", price: 250, address: "22 chemin des Lamentations, Bordeaux", description: "A zombie carrying deadly diseases.", skill: "Plague Cloud", height: "1m90", race: "Infected", user: User.last)
zombie6.photo.attach(io: file6, filename: "pestilence.png", content_type: "image/png")
zombie6.save

file7 = URI.parse("https://res.cloudinary.com/dz68ybmap/image/upload/v1738405861/graveborn.png").open
zombie7 = Zombie.create(name: "Graveborn", price: 275, address: "77 rue des Esprits, Strasbourg", description: "An undead being summoned by occult forces.", skill: "Spectral Summoning", height: "1m85", race: "Necromantic Zombie", user: User.last)
zombie7.photo.attach(io: file7, filename: "graveborn.png", content_type: "image/png")
zombie7.save

file8 = URI.parse("https://res.cloudinary.com/dz68ybmap/image/upload/v1738406058/brainless.png").open
zombie8 = Zombie.create(name: "Brainless", price: 80, address: "3 allée des Décomposés, Nantes", description: "A dumb but persistent zombie.", skill: "Enhanced Endurance", height: "1m78", race: "Classic Zombie", user: User.last)
zombie8.photo.attach(io: file8, filename: "brainless.png", content_type: "image/png")
zombie8.save

puts "- 8..."

User.create(username: "Arielle", email: "arielle@gmail.com", password: "password")

file9 = URI.parse("https://res.cloudinary.com/dz68ybmap/image/upload/v1738406280/crawler.png").open
zombie9 = Zombie.create(name: "Crawler", price: 100, address: "10 avenue des Rampants, Rennes", description: "A crawling zombie that clings to walls.", skill: "Fast Climbing", height: "1m40", race: "Crawling Zombie", user: User.last)
zombie9.photo.attach(io: file9, filename: "crawler.png", content_type: "image/png")
zombie9.save

file10 = URI.parse("https://res.cloudinary.com/dz68ybmap/image/upload/v1738406224/lurker.png").open
zombie10 = Zombie.create(name: "Lurker", price: 190, address: "99 place des Ombres, Nice", description: "Hides in the shadows and pounces on its prey.", skill: "Surprise Attack", height: "1m70", race: "Hunter Zombie", user: User.last)
zombie10.photo.attach(io: file10, filename: "lurker.png", content_type: "image/png")
zombie10.save

puts "- 10"
puts "- Seeds created"