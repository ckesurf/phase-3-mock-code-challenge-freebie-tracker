puts "Creating companies..."
google = Company.create(name: "Google", founding_year: 1998)
fb = Company.create(name: "Facebook", founding_year: 2004)
dm = Company.create(name: "Dunder Mifflin", founding_year: 2002)
e = Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
rick = Dev.create(name: "Rick")
morty = Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
hat = Freebie.create(item_name: "hat", value: 20, dev: rick, company: google)
pen = Freebie.create(item_name: "pen", value: 5, dev: rick, company: fb)

hoodie = Freebie.create(item_name: "hoodie", value: 40, dev: morty, company: google)

puts "Seeding done!"
