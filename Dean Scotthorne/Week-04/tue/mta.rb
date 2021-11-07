
# My next suggestion would be to create a simple function for a single trip on a single line. Then in that function, create a variable that will store the list/number of stops. Make sure it works in both directions on the single line. And then after do the main function and then call on your single trip function.
# get planTrip to console log the lines/stations you pass in to it back on the console
# get planTrip to log out ALL the stations for the lines you pass into it (you’ll need access to all the stations so you can find YOUR stations)
# get planTrip to find the indexOf the stations you care about from the list of all the stations on your line (step 2, above)
# get planTrip to print out all the stations between your start and end station
require ('pry')

line6 = ['Astor Place', 'Union Square', '23rd-6L', '28th-6L', '33rd', 'Grand Central']
lineN = ['8th-NL', 'Union Square', '23rd-NL', '28th-NL', '34th', 'Times Square,']
lineL = ['1st', '3rd', 'Union Square', '6th', '8th-LL' ]





def plan_trip ( line, station)

  station_index = line.index(station) #gets start station index
  start_station = line[station_index] # prints start station

  puts start_station



end

binding.pry
