katz_deli = []

def line(katz_deli)
  line_position = []
  if katz_deli.length == 0 
    puts "The line is currently empty."
  else
    counter = 1
    katz_deli.each do |name|
      line_position << "#{counter}. #{name}"
      counter += 1 
    end
    "The line is currently: " << "#{line_position.join}"
  end
end

def take_a_number (katz_deli, name)
  katz_deli << "#{name}"
  katz_deli.each_with_index do |name, index|
    puts "Welcome, #{name}. You are number #{index + 1} in line."
  end
end

def now_serving(katz_deli, name)
 # katz_deli << name
  #puts "Welcome #{name}. You are number #{katz_deli.length} in line."
  
  #if katz_deli == 0 
  #  puts "There is nobody waiting to be served!"
  #else
   # puts "Currently serving #{name}."
    #katz_deli.shift()
   #end 
  if katz_deli.length == 0 
    puts "There is nobody waiting to be served!"
  elsif katz_deli.length >= 1 
    puts "Currently serving #{name}."
    katz_deli.shift()
  else
    nil 
  end
end