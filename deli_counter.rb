# Write your code here.
require 'pry'

#def take_a_number(katz_deli, name)
  #katz_deli << name
 # katz_deli.each_with_index { |name, index| puts "Welcome, #{name}. You are number #{index + 1} in line." }
#end

def take_a_number(katz_deli,name)
  katz_deli << name
  person_in_line = katz_deli.index(name)
  puts "Welcome, #{name}. You are number #{person_in_line + 1} in line."
end

def now_serving(katz_deli)
#if the array known as katz_deli is empty put theres is nothin
  if katz_deli.empty? 
    puts "There is nobody waiting to be served!"
  else
#if the array known as katz_deli is not empty 
    to_be_served = katz_deli.shift
    puts "Currently serving #{to_be_served}."
  end
end 


def line(katz_deli)
  if katz_deli.empty?
    puts "The line is currently empty."
  else 
    v = "The line is currently: "
    print_out = []
    katz_deli.each_with_index { |name, index| print_out << "#{index+1}. #{name}" }
    #print_out.each { |phrase| puts phrase }
    puts v + print_out.join(" ")
  end
end 

#stored the consistent string as a variable
#iterate through the array 
#assign a position to the person (ie. the persons index)
#treat the variable as a counter... you then string interpolation to keep adding 
#the information that is passed through... ie. string + string - call string
