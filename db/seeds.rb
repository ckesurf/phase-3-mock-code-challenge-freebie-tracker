# Company.destroy_all
# Dev.destroy_all
# Freebie.destroy_all

puts "Creating companies..."
google = Company.create(name: "Google", founding_year: 1998)
fb = Company.create(name: "Facebook", founding_year: 2004)
dm = Company.create(name: "Dunder Mifflin", founding_year: 2002)
enron = Company.create(name: "Enron", founding_year: 1995)
Company.create(name: "Microsoft", founding_year: 1990)

puts "Creating devs..."
rick = Dev.create(name: "Rick")
morty = Dev.create(name: "Morty")
mrm = Dev.create(name: "Mr. Meseeks")
gazorpazop = Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here

Freebie.create(item_name: 'hat', value: 5000, company_id: google.id, dev_id: rick.id)
Freebie.create(item_name: 'visor', value: 5000, company_id: google.id, dev_id: morty.id)



Freebie.create(item_name: 'candy', value: 5000, company_id: fb.id, dev_id: rick.id)
Freebie.create(item_name: 'socks', value: 5000, company_id: dm.id, dev_id: rick.id)

puts "Seeding done!"
