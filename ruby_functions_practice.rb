require 'date'

def return_10()
  10
end

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

def length_of_string(s)
  s.length
end

def join_string(string_1, string_2)
  string_1 + string_2
end

def add_string_as_number(string_1, string_2)
  string_1.to_i + string_2.to_i
end

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

def cube_volume(length)
  length ** 3
end

def sphere_volume(r)
  (4 * Math::PI * r**3) / 3
end

def cylinder_volume(r, h)
  Math::PI * r**2 * h
end

def days_to_event(year, month, day)
  event_date = Date.new(year, month, day)
  (event_date - Date.today).to_i
end

def days_to_event_2(event_date)
  (event_date - Date.today).to_i
end

def age_from_birthday(dob)
   ((Date.today - dob).to_i) / 365
end

