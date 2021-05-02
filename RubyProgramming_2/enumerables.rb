=begin

using 
    .each
    .each_with_index
    .each_char
    .each_char.with_index
=end

months = ["jan", "feb", "mar", "apr"]
string = "hello there"
months.each {|ele| puts ele}
puts "-------"

months.each do |ele|
    puts ele
end

puts " ===== "
string.each_char do |letter|
    puts letter
end

puts "-----------"

string.each_char.with_index do |letter, idx|
    print letter
    print " "
    print idx 
    puts 
end

=begin
range
(1..6) inclusive
(1...6) end exclusive

.times   how often the code excutes

=end 


=begin
To Initials
Write a method to_initials that takes in a person's name string and returns a string representing their initials.
=end

def to_initials(name)
	names = name.split(" ")
  	initials = ""
  	names.each do |nom|
      initials += nom[0].upcase
    end
  return initials
end

puts to_initials("Kelvin Bridges")      # => "KB"
puts to_initials("Michaela Yamamoto")   # => "MY"
puts to_initials("Mary La Grange")      # => "MLG"



=begin
First In Array
Write a method first_in_array that takes in an array and two elements, the method should return the element that appears earlier in the array.
=end

def first_in_array(arr, el1, el2)
	arr.each do |element|
      if(element == el1)
        return el1
      end
      if element == el2 
        return el2
      end
    end
  	return nil
end

puts first_in_array(["a", "b", "c", "d"], "d", "b"); # => "b"
puts first_in_array(["cat", "bird" ,"dog", "mouse" ], "dog", "mouse"); # => "dog"
=begin
Abbreviate Sentence
Write a method abbreviate_sentence that takes in a sentence string and returns a new sentence where every word longer than 4 characters has all of it's vowels removed.
=end
def abbreviate_sentence(sent)
	# create an array of vowels
  	# split the sent into an array of words
  	# for each word check length
  	# if the length is greater than 4
  	# remove vowels
  	# rejoin the words into a sentence
  	# return the sentence
  	vowels = ["a", "e", "i", "o", "u"]
  	words = sent.split(" ")
  	words.each do |word|
      
      if(word.length > 4)
        
        word.each_char do |char|
          
          if(vowels.include? char)
            
            word[word.index(char)] = ""
            
          end
          
        end
        
      end
      
    end
  	return words.join(" ")
end


### abreviate words need helper function!!!


puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"

=begin
Format Name
Write a method format_name that takes in a name string and returns the name properly capitalized.
=end

# Hint: use str.upcase and str.downcase
# "abc".upcase # => "ABC"

# NEED TO SLICE CORRECTLY

def format_name(str)
	names = str.split(" ")
  	names.each_with_index do |name, i|
      names[i] = name[0].upcase + name[1..-1].downcase
    end
  	return names.join(" ")
end

puts format_name("chase WILSON") # => "Chase Wilson"
puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"


=begin
Rotate Array
Write a method rotate_array that takes in an array and a number. The method should return the array after rotating the elements the specified number of times. A single rotation takes the last element of the array and moves it to the front.
=end
def rotate_array(arr, num)
	num.times do
      toFront = arr.pop
      arr.unshift(toFront)
    end
  	return arr
end

print rotate_array([ "Matt", "Danny", "Mashu", "Matthias" ], 1) # => [ "Matthias", "Matt", "Danny", "Mashu" ]
puts

print rotate_array([ "a", "b", "c", "d" ], 2) # => [ "c", "d", "a", "b" ]
puts



=begin
Is Valid Name
Write a method is_valid_name that takes in a string and returns a boolean indicating whether or not it is a valid name
=end
# A name is valid is if satisfies all of the following:
# - contains at least a first name and last name, separated by spaces
# - each part of the name should be capitalized
#
# Hint: use str.upcase or str.downcase
# "a".upcase # => "A"

def is_valid_name(str)
	names = str.split(" ")
  	if names.length < 2
      return false
    end
  
  	names.each do | name |
      if(name[0] != name[0].upcase || name[1..-1] != name[1..-1].downcase)
        return false
      end
    end
  return true
end

puts is_valid_name("Kush Patel")       # => true
puts is_valid_name("Daniel")           # => false
puts is_valid_name("Robert Downey Jr") # => true
puts is_valid_name("ROBERT DOWNEY JR") # => false