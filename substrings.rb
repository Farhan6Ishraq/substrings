require "pry-byebug"

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(str, dictionary) 
  lower = ("a".."z").to_a
  str = str.downcase
  mutated_str = ""
  arr = [];
  hash = {};

  str.each_char do |char|
    if lower.include?(char) || char == " "
      mutated_str += char
    else
      next
    end
  end

  mutated_str = mutated_str.split(" ")

  mutated_str.each do |elem|
    dictionary.each do |dict|
      if elem.include?(dict)
        arr.push(dict)
        puts dict
      end
    end
  end

  hash = arr.uniq.product([0]).to_h

  arr.each do |elem|
    hash[elem] += 1
  end

  binding.pry
end


substrings("Howdy partner, sit down! How's it going?", dictionary)