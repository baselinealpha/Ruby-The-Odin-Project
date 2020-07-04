dictionary = ["not", "word", "hi", "hi", "hello", "my", "what", "we", "do", "we", "live", "please", "me", "jump", "school", "garden", "sports", "heart", "drive", "motivation", "break", "hi", "word", "dictionary", "my", "do", "hi"]

def substrings(string, dict)
  words = string.split
  alphabets = ("a".."z").to_a
  k = 0
  while k < words.size do
    letters = words[k].split("")
    l = 0
    while l < letters.size do
      true_letter = alphabets.index {|m| m == letters[l].downcase}
      if true_letter == nil
        letters.delete (letters[l])
      end
      l += 1
    end
    words[k] = letters.join
    k += 1
  end


  i = 0
  result = {}
  while i < dict.size do
    match = words.index {|j| j.downcase == dict[i]}
    if match != nil
    if result.key?(words[match])
      result[words[match]] += 1
    else result[words[match]] = 1
    end
  end
    i += 1
  end
  print result
end

substrings("please, do not break, my heart!", dictionary)