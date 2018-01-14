letters = {
  "a" => false,
  "b" => false,
  "c" => false,
  "d" => false,
  "e" => false,
  "f" => false,
  "g" => false,
  "h" => false,
  "i" => false,
  "j" => false,
  "k" => false,
  "l" => false,
  "m" => false,
  "n" => false,
  "o" => false,
  "p" => false,
  "q" => false,
  "r" => false,
  "s" => false,
  "t" => false,
  "u" => false,
  "v" => false,
  "w" => false,
  "x" => false,
  "y" => false,
  "z" => false
}

puts "Please enter a sentence: "

input = gets.chomp.downcase

input.each_char do |char|
  letters[char] = true
end

pangram = true

letters.each do |letter, value|
  if !letters[letter]
    pangram = false
  end
end

if pangram
  puts "This sentence is a pangram!"
else
  puts "Sorry, this sentence is not a pangram."
end
