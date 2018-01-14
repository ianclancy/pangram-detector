require_relative "sentence"

puts "Please enter a sentence: "
input = gets.chomp.downcase

sentence = Sentence.new(input)

if sentence.pangram?
  puts "This sentence is a pangram!"
else
  puts "Sorry, this sentence is not a pangram. It is missing the following letters:"
  puts sentence.missing_letters
end
