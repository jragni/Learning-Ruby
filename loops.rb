
=begin 
Write a method count_e(word) that takes in a string word and returns the number of e's in the word
=end

def count_e(word)
	count = 0
  	i = 0
  	while(i < word.length)
      if(word[i] == "e")
        count+=1
      end
      
      i+=1
    end
	
  return count  
  
end

puts count_e("movie") # => 1
puts count_e("excellent") # => 3

=begin
Write a method count_a(word) that takes in a string word and returns the number of a's in the word. The method should count both lowercase (a) and uppercase (A)
=end 
def count_a(word)
    i = 0
    count = 0
    while( i < word.length)
      if(word[i] == "a" or word[i] == "A")
        count += 1
      end
      i+=1
    end
    return count

end
puts "---------"
puts count_a("application")  # => 2
puts count_a("bike")         # => 0
puts count_a("Arthur")       # => 1
puts count_a("Aardvark")     # => 3
puts "---------"

=begin
Write a method, count_vowels(word), that takes in a string word and returns the number of vowels in the word. Vowels are the letters a, e, i, o, u.
=end
def count_vowels(word)
	vowels = ["a","e","i","o","u","A","E","I","O","U"]
  	i = 0
  	count = 0
  	while ( i < word.length)
      if( vowels.include? word[i] )
        count+=1
      end
    i+=1
    end
  return count
end

puts "---------"

puts count_vowels("bootcamp")  # => 3
puts count_vowels("apple")     # => 2
puts count_vowels("pizza")     # => 2
puts "---------"

=begin

Sum Nums

Write a method sum_nums(max) that takes in a number max and returns the sum of all numbers from 1 up to and including max.

=end

def sum_nums(max)
	# create a variable to store sum
  	# loop until max
  	# sum += iterator
  idx = 0
  sum = 0
  while(idx <= max)
    sum+= idx
    idx+=1
  end
  return sum
end


puts "---------"

puts sum_nums(4) # => 10, because 1 + 2 + 3 + 4 = 10
puts sum_nums(5) # => 15

puts "---------"
=begin
Write a method factorial(num) that takes in a number num and returns the product of all numbers from 1 up to and including num.
=end

def factorial(num)
	product = num
  	iter = num-1
  	while(iter>1)
    	product *=iter
    	iter-= 1
    end
  return product
end
puts "---------"

puts factorial(3) # => 6, because 1 * 2 * 3 = 6
puts factorial(5) # => 120, because 1 * 2 * 3 * 4 * 5 = 120
puts "---------"

=begin
Reverse

Write a method reverse(word) that takes in a string word and returns the word with its letters in reverse order.
=end

def reverse(word)
	# return word.reverse
	idx = word.length - 1
  	res = ""
  	while(idx>=0)
    	res+= word[idx]
    	idx-=1
    end
  return res
end
puts "---------"

puts reverse("cat")          # => "tac"
puts reverse("programming")  # => "gnimmargorp"
puts reverse("bootcamp")     # => "pmactoob"
puts "---------"


=begin 
Write a method is_palindrome(word) that takes in a string word and returns the true if the word is a palindrome, false otherwise. A palindrome is a word that is spelled the same forwards and backwards.

=end 

def is_palindrome(word)
	# too easy
    # return word == word.reverse
  	idxReverse = word.length-1
  	idxForward = 0
  	while(idxForward<idxReverse)
      if(word[idxForward] != word[idxReverse])
        return false
      end
      idxReverse -=1
      idxForward +=1
    end
  return true
  	
end
puts "---------"

puts is_palindrome("racecar")  # => true
puts is_palindrome("kayak")    # => true
puts is_palindrome("bootcamp") # => false

puts "---------"
