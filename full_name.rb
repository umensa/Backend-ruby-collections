# frozen_string_literal: true

# (1) Write a program which asks for a person's first name, then middle, then last.
# It should store each of these parts in an array.
# Finally, it should greet the person using their full name.
# Call the program full_name.rb.

# Class
class FullName
  def initialize
    @full_name = []
  end

  def add_person
    print 'Enter your first name: '
    first_name = gets.chomp.to_s
    @full_name.push(first_name)

    print 'Enter your middle name: '
    middle_name = gets.chomp.to_s
    @full_name.push(middle_name)

    print 'Enter your last name: '
    last_name = gets.chomp.to_s
    @full_name.push(last_name)
  end

  def print_full_name
    puts '*' * 30

    print '> Welcome '
    @full_name.each do |item|
      print "#{item} "
    end

    print "\n"
    puts '*' * 30
  end
end

my_name = FullName.new

my_name.add_person
my_name.print_full_name
