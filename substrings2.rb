dictionary = ["not", "word", "hi", "hi", "hello", "my", "what", "we", "do", "we", "live", "please", "me", "jump", "school", "garden", "sports", "heart", "drive", "motivation", "break", "hi", "word", "dictionary", "my", "do", "hi"]

def substrings(string, dict)
  result = {}
  words = string.downcase.split
  words.each do |word|
    dict.each do |found|
      if word.include? found
      if result.key? (found)
      result[found] += 1
      else 
        result[found] = 1
      end
    end
    end
  end
  print result
end

substrings("please, don't break my heart!", dictionary)