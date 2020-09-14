########################################################
# Step 1: Establish the layers

# Based on the CSV provided, I believe I will need a nested Hash of Array of Hashes. 

# The most outer hash will have a KEY|VALUE pair where KEY is the Driver_ID and VALUE is the Array of Ride Hashes that holds the information on one ride in each hash.

# Layer 1 Driver_ID
# Layer 2 Rides for each driver
# Layer 3 Ride information

# Layer 3 is nested in Layer 2 which is nested in Layer 1

# Layers 1 and 2 have within it a different Layer

# Which layers are "next" to each other?

########################################################
# Step 2: Assign a data structure to each layer

# Layer 1 Driver_ID (HASH)
# Layer 2 Rides for each driver (ARRAY)
# Layer 3 Ride information (HASH)

########################################################
# Step 3: Make the data structure!

rider_data = {
  "DR0001": [
      {
       date: "3rd Feb 2016",
       cost: 10,
       rider_ID: "RD0003",
       rating: 3
      },
      {
       date: "3rd Feb 2016",
       cost: 30,
       rider_ID: "RD0015",
       rating: 4
      },
      {
       date: "5th Feb 2016",
       cost: 45,
       rider_ID: "RD0003",
       rating: 2
      }
    ], 
  "DR0002": [
      {
       date: "3rd Feb 2016",
       cost: 25,
       rider_ID: "RD0073",
       rating: 5
      },
      {
       date: "4th Feb 2016",
       cost: 15,
       rider_ID: "RD0013",
       rating: 1
      },
      {
       date: "5th Feb 2016",
       cost: 35,
       rider_ID: "RD0066",
       rating: 3
      }
    ], 
  "DR0003": [
      {
       date: "4th Feb 2016",
       cost: 5,
       rider_ID: "RD0066",
       rating: 5
      },
      {
       date: "5th Feb 2016",
       cost: 50,
       rider_ID: "RD0003",
       rating: 2
      }
    ],
  "DR0004": [
      {
       date: "3rd Feb 2016",
       cost: 5,
       rider_ID: "RD0022",
       rating: 5
      },
      {
       date: "4th Feb 2016",
       cost: 10,
       rider_ID: "RD0022",
       rating: 4
      },
      {
       date: "5th Feb 2016",
       cost: 20,
       rider_ID: "RD0073",
       rating: 5
      }
    ]
}

########################################################
# Step 4: Total Driver's Earnings and Number of Rides

puts 
puts "Driver Rides:"
puts

rider_data.each {|driver, rides| puts "#{driver}: #{rides.length} rides"}

puts 
puts "Driver Earnings:"
puts

rider_data.map do |driver, earnings|
  sum = rider_data[driver].sum do |i|
  i[:cost]
  end
  puts "#{driver}: has made $#{sum}."
end

puts 
puts "Driver Ratings:"
puts

rider_data.map do |driver, rating|
  sum = rider_data[driver].sum do |i|
    i[:rating]
  end
  count = rider_data[driver].count do |i|
    i[:rating]
  end

  average = sum/count.to_f
  
  puts "#{driver}: Average Rating is #{average.round(2)}."
end

puts 
puts "Highest Paid Driver:"
puts
# I tried so many variations and could not get my code to work. 
# So I am commenting out these two sections so instructors can see what I was attempting to do. 

# rider_data.map do |driver, earnings|
#     sum = rider_data[driver].sum do |i|
#     i[:cost]
#     maximum = sum.max {|i|}
#     puts maximum
#     end
#   puts "#{driver}: has made $#{maximum}."
# end

puts 
puts "Highest Average Rating:"
puts 

# Which driver has the highest average rating?

# rider_data.map do |driver, rating|
#   sum = rider_data[driver].sum do |i|
#     i[:rating]
#   end
#   count = rider_data[driver].count do |i|
#     i[:rating]
#   end

#   average = sum/count.to_f
#   max_avg = avg.max {|i}
  
#   puts "#{driver}: Hi Rating is #{max_avg.round(2)}."
# end
