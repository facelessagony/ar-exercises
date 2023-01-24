require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
surrey = Store.create 
surrey.name = "Surrey"
surrey.annual_revenue = 224000
surrey.mens_apparel = false 
surrey.womens_apparel = true
surrey.save()

whistler = Store.create 
whistler.name = "Whistler"
whistler.annual_revenue = 1900000
whistler.mens_apparel = true 
whistler.womens_apparel = false
whistler.save()

yaletown = Store.create 
yaletown.name = "Yaletown"
yaletown.annual_revenue = 430000
yaletown.mens_apparel = true 
yaletown.womens_apparel = true
yaletown.save()

@mens_stores = Store.where(mens_apparel: true).load

puts @mens_stores

(@mens_stores).each do |mens_store|
  puts mens_store.name
  puts mens_store.annual_revenue
end

@womens_stores_less_1mil = Store.where(womens_apparel: true, annual_revenue: ..1000000).load

puts @womens_stores_less_1mil