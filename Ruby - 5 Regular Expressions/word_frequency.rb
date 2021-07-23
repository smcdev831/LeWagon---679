def most_common_words(file_name, stop_words_file_name, number_of_word)
  # TODO: return hash of occurences of number_of_word most frequent words
  stop_words = load_stop_words(stop_words_file_name)
  counter_hash = Hash.new(0)
  File.open(file_name, "r").each_line do |line|
    line_array = line.split(/\W+/)
    line_array.each do |word|
      word = word.downcase
      if not stop_words.include?(word)
        counter_hash[word] += 1
      end
    end
  end
  counter = counter_hash.sort_by {|_, v| -v}
  return counter[0...number_of_word].to_h
end
def load_stop_words(stop_words_file_name)
  stop_words = []
  File.open(stop_words_file_name, "r").each_line do |line|
    stop_words << line.chomp
  end
  stop_words
end
# puts most_common_words("../source.txt", "stop_words.txt", 3 )
