# frozen_string_literal: true

# (3) Write a program with a function add_up(i)
# It is to be passed a positive integer, and it will add all the numbers from 1 to that integer and return the sum
# Call the function three times within the program, and each time print out the return value
# Call the program add_up.rb

def add_up(int)
  if int.positive?
    total = 0
    (1..int).each do |plus|
      total += plus
    end
    puts total
  else
    puts 'Should be a positive integer'
  end
end

add_up(2)
add_up(4)
add_up(-3)
