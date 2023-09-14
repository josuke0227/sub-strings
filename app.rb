def get_sub_strings(word, words)
  result = Hash.new(0)
  downcase_word = word.downcase

  words.each do |word|
    sub_string_count = downcase_word.scan(word).length
    result[word] = sub_string_count unless sub_string_count == 0
  end
  result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p get_sub_strings("Howdy partner, sit down! How's it going?", dictionary)