#(2) Write a program called sorted_words.rb.  
#It should prompt the user for words and add each to an array.  
#The user should be able to add as many words as they like, until they just hit enter to return a blank word. 
#Then sort the array using the sort method and print it out.

class SortedWords
	def initialize
		@words = []
	end
	
	def ask(question)
		print question + " "
		answer = gets.chomp
	end

	def add_word
		answer = ask("write some words (hit enter to exit):")
		until answer == ""
			while answer.index(/\d/)
				answer = ask("Please don't put numbers, write again:")
			end
			
			@words.push(answer)
			answer = ask("write some words (hit enter to exit):")
		end
	end

	def print_words
		puts "." * @words.length
		print "These are your words sorted: "

		@words.sort.each do |item|
			print "\"#{item}\" "
		end
	end
end

my_words = SortedWords.new
my_words.add_word
my_words.print_words