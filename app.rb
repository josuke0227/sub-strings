def get_sub_strings(word, words)
  result = Hash.new(0)
  sub_string = ""
  word = word.downcase
  for i in 0..(word.length - 1) do
    for j in i..(word.length - 1) do
      sub_string = i == j ? word[i] : word[i...j + 1]
      if words.include?(sub_string) == true
        result[sub_string] += 1
      end
    end
  end
  result
end


# dictionary = ["a", "ab", "abc", "b", "bc", "c"]
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p get_sub_strings("Howdy partner, sit down! How's it going?", dictionary)