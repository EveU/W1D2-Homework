#will load in functions from the file
require_relative "./ruby_functions_practice"

# #### Example
# test_result = return_10()
# puts "#{test_result} should = 10"


# ##### Integer Play
# number_1 = 10
# number_2 = 5
# add_result = add( number_1, number_2 )
# puts "#{number_1} + #{number_2} = #{add_result}"

# subtract_result = subtract( number_1, number_2 )
# puts "#{number_1} - #{number_2} = #{subtract_result}"

# multiply_result = multiply( number_1, number_2 )
# puts "#{number_1} * #{number_2} = #{multiply_result}"

# divide_result = divide( number_1, number_2 )
# puts "#{number_1} / #{number_2} = #{divide_result}"

# ##### String Play
# test_string = "A string of length 21"
# length_of_string = length_of_string(test_string)
# puts "#{test_string} is length #{length_of_string}"

# string_1 = "Mary had a little lamb, "
# string_2 = "it's fleece was white as snow"
# joined_string = join_string(string_1, string_2)
# puts "Nursery rhyme: #{joined_string}"

# #####Type conversion
# string_1 = '1'
# string_2 = '2'
# add_result = add_string_as_number(string_1, string_2)
# puts "#{string_1} + #{string_2} = #{add_result} Should be 3, (not 12!)"

# #####Conditional logic
# first_month_string = number_to_full_month_name(1)
# third_month_string = number_to_full_month_name(3)
# ninth_month_string = number_to_full_month_name(9)
# puts "The first month is #{first_month_string}"
# puts "The third month is #{third_month_string}"
# puts "The ninth month is #{ninth_month_string}"

# first_month_string = number_to_short_month_name(1)
# third_month_string = number_to_short_month_name(3)
# ninth_month_string = number_to_short_month_name(9)
# puts "The first month in 3 letters is #{first_month_string}"
# puts "The third month in 3 letters is #{third_month_string}"
# puts "The ninth month in 3 letters is #{ninth_month_string}"


##### Further Challenges (not required),  try to write the expectation first if you can.

####http://ruby-doc.org/core-2.1.4/Float.html
####Given the length of a side of a cube calculate the volume 
cube_1 = cube_volume(5)
cube_2 = cube_volume(3)
puts "The volume of cube 1, which has a length of 5, is #{cube_1}"
puts "The volume of cube 2, which has a length of 3, is #{cube_2}"

####Given the radius of a sphere calculate the volume
sphere_1 = sphere_volume(5).round(1)
puts "I expect sphere_1 to equal 523.6. sphere_1 = #{sphere_1}"

####Can you extend this to calculate other shapes' volumes? (Cylinder, Rectangular Prism, Cone, Capsule)
cylinder_1 = cylinder_volume(2, 3).round(1)
puts "I expect cylinder 1, with a radius of 2 and a height of 3, to equal 37.7. It equals #{cylinder_1}"

####http://ruby-doc.org/stdlib-2.1.1/libdoc/date/rdoc/Date.html
####Days until christmas, Calculate how many nights there are from today until Christmas morning.
sleeps_to_santa = days_to_event(2015, 12, 25)
days_to_new_year = days_to_event(2015, 12, 31)
puts "There are #{sleeps_to_santa} sleeps until Santa's been!"
puts "It's New Year in #{days_to_new_year} days"

####Given a date of birth, calculate how old a person born on that date would be
age = age_from_birthday(2003, 8, 12)
puts "The age of the person is #{age}"


#### Create a command line interface using put, gets to interact with the your functions 

##SHAPES
puts "What is the length of your cube?"
cube_length = gets.chomp.to_i
your_cube_volume = cube_volume(cube_length)
puts "Your cube has a volume of #{your_cube_volume}"

puts "What is the radius of your sphere?"
sphere_radius = gets.chomp.to_i
your_sphere_volume = sphere_volume(sphere_radius)
puts "Your sphere has a volume of #{your_sphere_volume}"

puts "What is the radius of your cylinder?"
cylinder_radius = gets.chomp.to_i
puts "What is the height of your cylinder?"
cylinder_height = gets.chomp.to_i
your_cylinder_volume = cylinder_volume(cylinder_radius, cylinder_height)
puts "Your cylinder has a volume of #{your_cylinder_volume}"

##DATES
puts "When is the event you are counting down to? (YYYY-MM-DD)"
your_event = Date.parse(gets.chomp)
days_to_your_event = days_to_event_2(your_event)
puts "Your event is in #{days_to_your_event} days!"

# puts"What's your date of birth? (YYYY MM DD)"
# dob = gets.chomp.split
# year = dob[0].to_i
# month = dob[1].to_i
# day = dob[2].to_i
# puts "#{year} #{month} #{day}"
# age = age_from_birthday(year, month, day)
# puts "Your age is #{age}"

puts"What's your date of birth? (YYYY-MM-DD)"
dob = Date.parse(gets.chomp)
age = age_from_birthday_1(dob)
puts "Your age is #{age}"






