def line(katz_deli)
  line_position = []
  if katz_deli.length == 0 
    puts "The line is currently empty."
  else
    katz_deli.each_with_index do |name, index|
      line_position.push("#{index + 1}. #{name}")
    end
    puts "The line is currently: " << "#{line_position.join(" ")}"
  end
end

def take_a_number (katz_deli, name)
  katz_deli.push("#{name}")
    puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
  if katz_deli.length == 0 
    puts "There is nobody waiting to be served!"
  else
    katz_deli.each.first do |name|
      puts "Currently serving #{name}."
    end
    katz_deli.shift()
  end
end