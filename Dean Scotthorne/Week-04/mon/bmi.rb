puts "BMI Calculator"

print "what is your weight in KGs: "
weight = gets.to_f
puts "#{weight} kgs"

print "How tall are you in cm's: "
height = gets.to_f
puts "#{height} cm's"

height_m = height / 100
height_m2 = height_m * height_m

bmi = weight / height_m2

puts "Your BMI is #{bmi.round(2)}"
