puts "Creating companies..."
google = Company.create(name: "Google", founding_year: 1998)
facebook = Company.create(name: "Facebook", founding_year: 2004)
dundler_mifflin = Company.create(name: "Dunder Mifflin", founding_year: 2002)
enron = Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
rick = Dev.create(name: "Rick")
morty = Dev.create(name: "Morty")
mr_meseeks = Dev.create(name: "Mr. Meseeks")
gazorpazop = Dev.create(name: "Gazorpazop")

puts "Creating freebies..."
Freebie.create(item_name: "Sweatshirt", value: 25, company_id: google.id, dev_id: gazorpazop.id)
Freebie.create(item_name: "Shirt", value: 10, company_id: facebook.id, dev_id: mr_meseeks.id)
Freebie.create(item_name: "USB Drive", value: 15, company_id: dundler_mifflin.id, dev_id: morty.id)
Freebie.create(item_name: "Keychain", value: 5, company_id: enron.id, dev_id: rick.id)
Freebie.create(item_name: "Backpack", value: 30, company_id: google.id, dev_id: rick.id)
Freebie.create(item_name: "Bookmark", value: 1, company_id: facebook.id, dev_id: rick.id)
# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here

puts "Seeding done!"
