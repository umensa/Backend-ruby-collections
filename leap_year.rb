# frozen_string_literal: true

# (4) Write a program, leap_year.rb.
# It will ask the user for a starting year and an ending year,
# and it will then print out all the leap years between them,
# including the starting or ending year if those are leap years.
# The rules for leap years are:
# A leap year is divisible by 4,
# except for years that are divisible by 100 -- those aren't leap years
# -- except for years that are divisible by 400, which ARE leap years.

def leap
  print 'Enter the starting year: '
  start_year = gets.chomp.to_i
  print 'Enter the ending year: '
  end_year = gets.chomp.to_i

  years = []

  (start_year..end_year).each do |leap|
    if (leap % 4).zero? && !(leap % 100).zero? || (leap % 400).zero?
      years.push(leap)
    end
  end

  puts 'these are the leap years:'
  puts years
end

leap
