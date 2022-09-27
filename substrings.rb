# set up dictionary of sub-strings
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

# create method that accepts a string, and a "dictionary" of substrings
# convert the passed in word to downcase
# iterate through the dictionary
# and check if the substring from the dictionary is in each of the words from the string passed in
# if it is, add one to the count for that sub-string
# return an object (hash) with the substring => number of times its included in the string
def substrings(string, substrings)
    string_array = string.downcase.split(' ')
    result_hash = substrings.reduce(Hash.new(0)) do |result, subs|
        string_array.each {|word| result[subs] += 1 if word.include?(subs)}
        result
    end
    puts result_hash

end




substrings("Howdy partner, sit down! How's it going?", dictionary)
