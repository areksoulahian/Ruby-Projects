# substrings

dictionary = ["below","down","go","going", "be", "be", "horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(strings, dictionary)
  substrings_result = Hash.new(0) # default value is 0
  strings.downcase! # downcase the string
  strings.split.each do |string| # split the string into words if there are spaces
    dictionary.each do |word| # iterate through the dictionary
      if string.include?(word) # if the string includes the word
        substrings_result[word] += 1 # increment the value of the word
      end # end if
    end # end dictionary
  end # end strings
  substrings_result # return the hash
end # end substrings


substrings("below", dictionary)
# => {"below"=>1, "be"=>2, "low"=>1}
substrings("Howdy partner, sit down! How's it going?", dictionary)
# => {"how"=>2, "howdy"=>1, "part"=>1, "partner"=>1, "it"=>2, "i"=>3, "sit"=>1, "down"=>1, "own"=>1, "go"=>1, "going"=>1}