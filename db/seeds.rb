# Dev.destroy_all
# Company.destroy_all
# Freebie.destroy_all

puts 'Creating companies...'
google = Company.create(name: 'Google', founding_year: 1998)
Company.create(name: 'Facebook', founding_year: 2004)
Company.create(name: 'Dunder Mifflin', founding_year: 2002)
Company.create(name: 'Enron', founding_year: 1995)

puts 'Creating devs...'
Dev.create(name: 'Obie')
morty = Dev.create(name: 'McKinsey')
Dev.create(name: 'Mr. Meseeks')
Dev.create(name: 'Gazorpazop')

puts 'Creating freebies...'

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
google = Company.first

# Obies Macbook Pro
Freebie.create(
  item_name: 'Macbook Pro',
  value: 2,
  company: google,
  dev: Dev.first,
)

# McKinsey's Macbook Pro
Freebie.create(
  item_name: 'Macbook Pro',
  value: 2,
  company: google,
  dev: Dev.second,
)

Freebie.create(
  item_name: 'google glasses',
  value: 2,
  company: google,
  dev: Dev.third,
)

Freebie.create(
  item_name: 'paper',
  value: 2,
  company: Company.third,
  dev: Dev.second,
)
Freebie.create(
  item_name: 'hat',
  value: 2,
  company: Company.fourth,
  dev: Dev.second,
)

# Freebie.create(item_name: "hat", value: 2, company_id: google.id, dev_id: morty.id)

puts 'Seeding done!'
