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

def now_serving(katz_deli)
  if katz_deli == 0 
    puts "There is nobody waiting to be served!"
    puts "Currently serving #{name}."
    katz_deli.shift()
   end 
    
  katz_deli.first
    puts "Currently serving #{name}."
  katz_deli.shift()
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  end
end