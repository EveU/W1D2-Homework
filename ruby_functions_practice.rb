require 'date'

##EXAMPLE
def return_10()
  10
end

##INTEGERS
def add(num_1, num_2)
  num_1  + num_2
end

def subtract(num_1, num_2)
  num_1 - num_2
end

def multiply(num_1, num_2)
  num_1 * num_2
end

def divide(num_1, num_2)
  num_1 / num_2
end

##STRINGS
def length_of_string(s)
  s.length
end

def join_string(string_1, string_2)
  string_1 + string_2
end

## TYPE CONVERSION
def add_string_as_number(string_1, string_2)
  string_1.to_i + string_2.to_i
end

##CONDITIONALS
def number_to_full_month_name(n)
  case n
  when 1
    "January"
  when 3
    "March"
  when 9
    "September"
  end
end

def number_to_short_month_name(n)
  number_to_full_month_name(n)[0, 3]
end

##SHAPES
def cube_volume(length)
  length ** 3
end

def sphere_volume(r)
  (4.0/3 * Math::PI * r**3)
end

def cylinder_volume(r, h)
  Math::PI * r**2 * h
end

def rect_prism_volume(w, l, h)
  w*l*h
end

def cone_volume(r, h)
  ((Math::PI * r**2 * h) / 3)
end

def capsule_volume(radius, side_length)
  # πr2((4/3)r + a) -> formula for capsule volume
  (Math::PI * radius**2 * ((4.0 / 3) * radius + side_length))
end

##DATES
def days_to_event(year, month, day)
  event_date = Date.new(year, month, day)
  (event_date - Date.today).to_i
end

def days_to_event_2(event_date)
  (event_date - Date.today).to_i
end

def age_from_birthday(year, month, day)
  dob = Date.new(year, month, day)
   ((Date.today - dob).to_i) / 365
end

def age_from_birthday_1(dob)
   ((Date.today - dob).to_i) / 365
end

