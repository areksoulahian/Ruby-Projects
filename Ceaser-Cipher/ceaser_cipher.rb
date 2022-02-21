# ceaser cipher => shift the letters by a number of letters, in this case 3

def ceaser_cipher(string, shift) # method to encrypt the string
  alphabet = ("a".."z").to_a # create an array of lowercase letters
  string.split("").map do |letter| # split the string into an array of letters
    if alphabet.include?(letter.downcase) # if the letter is in the alphabet
      new_index = alphabet.index(letter.downcase) + shift # find the index of the letter in the alphabet and add the shift
      new_index -= 26 if new_index >= 26 # if the index is greater than 26, subtract 26
      letter = alphabet[new_index] # find the letter at the new index
    end # end if
    letter # return the letter
  end.join # join the array back into a string
end # end method

message = "what a string!" # create a string
puts ceaser_cipher(message, 5) # call the method and pass the string and the shift

