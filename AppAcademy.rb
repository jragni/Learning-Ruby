
=begin 
  Jumpstart
  
  1. Restate question
  2. Answering the question
  3. explain your solution

=end

name1 = "Kelvin Bridges"
name2 = "Michele Yamamoto"
name3 = "Mary La Grange"

def to_initials(name)
  names = name.split(' ')
  ans = '' 
  names.each do | name |
    ans+= name[0].upcase 
  end
  return ans
end
 
puts to_initials(name1)
puts to_initials(name2)
puts to_initials(name3)

def is_valid_email(str)
  parts = str.split("@")
  if(parts.length != 2)
    return false
  end  
  right = parts[0]
  left = parts[1]

  right.each_char do | letter |
    if(letter.ord < 'a'.ord || letter.ord > 'z'.ord)
      return false
    end
  end

  if(left.split(".").length != 2)
    return false
  else
    return true
  end
end







  
