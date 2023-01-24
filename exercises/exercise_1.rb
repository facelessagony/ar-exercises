require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

burnaby = Store.create 
burnaby.name = "Burnaby"
burnaby.annual_revenue = 300000
burnaby.mens_apparel = true 
burnaby.womens_apparel = true
burnaby.save()

richmond = Store.create
richmond.name = "Richmond"
richmond.annual_revenue = 1260000
richmond.mens_apparel = false
richmond.womens_apparel = true

gastown = Store.create
gastown.name = "Gastown"
gastown.annual_revenue = 1260000
gastown.mens_apparel = true
gastown.womens_apparel = false
gastown.save()


puts Store.count
