# Substring

The purpose of this assignment is to create a function with two paramaters. One for an input string (for example: "below") and the other is a dictionary of words.

After calling the function
substrings("below", dictionary), it finds two "be" words and one "low" word in the dictionary of words from the input string "below"

## the way the function works

- two parameters
- result string has a default hash of 0
- downcase the strings argument
- split the strings argument into individual words
- check through each dictionary word
- if it finds more than one increment each time in the result string value
- return the hash
