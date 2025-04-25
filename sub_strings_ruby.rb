#Implement a method #substrings that takes a string as the first argument and then
#an array of valid substrings (your dictionary) as the second argument.
#It should return a hash listing each substring (case insensitive) that
#was found in the original string and how many times it was found.





dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"] => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]



def substrings(string, dictionary)
 
search_downcase= string.downcase # for insensitivity 

words = search_downcase.split(" ")

result = Hash.new(0)

words.each do |word|
    result[word] += 1 if dictionary.include?(word)
end

puts result

end

puts substrings("jacek horny couple said howdy my friend, howdy, how do you do and how i own you ", dictionary)



 
 

 





