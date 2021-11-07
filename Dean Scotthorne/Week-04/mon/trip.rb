puts "Trip Calculator"

print "How far is your destination: "
distance = gets.to_f
puts "You have #{distance} miles to travel."

print "How many miles do you get per gallon: "
fuel = gets.to_f
puts "Your vehicle gets #{fuel} miles per gallon."

print "What's the price of fuel per gallon: "
fuel_cost = gets.to_f
puts "Damn! $#{fuel_cost} per gallon!"

print "How fast will you be driving: "
speed = gets.to_i

puts "Wow, #{speed}mph is really something!"

trip_time = distance / speed

trip_cost = (distance / fuel) * fuel_cost

puts "Your journey will take #{trip_time} hours and will cost $#{trip_cost}"
