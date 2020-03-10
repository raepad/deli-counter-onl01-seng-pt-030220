katz_deli = []

def line(array, name)
  line_position = []
  if katz_deli.length == 0 
    puts "The line is currently empty."
  else
    katz_deli.each.with_index(1) do |name, index|
      line_position.push("#{index}. #{name}")
    end
    "The line is currently: " << "#{line_position.join}"
  end
end

 #<< "#{counter}. #{name}"
def take_a_number (katz_deli, name)
  katz_deli << "#{name}"
  katz_deli.each_with_index do |name, index|
    puts "Welcome, #{name}. You are number #{index + 1} in line."
  end
end

def now_serving(katz_deli, name)

  if katz_deli.length == 0 
    puts "There is nobody waiting to be served!"
  elsif katz_deli.length >= 1 
    puts "Currently serving #{name}."
    katz_deli.shift()
  else
    nil 
  end
end