def most_common_words(file_name, stop_words_file_name, number_of_word)
  stop_words = load_stop_words(stop_words_file_name)
  counter_hash = Hash.new(0)
  counter_hash = create_hash_from_file(file_name, stop_words, counter_hash)
  counter = counter_hash.sort_by { |_, v| -v }
  return counter[0...number_of_word].to_h
end

def create_hash_from_file(file_name, stop_words, counter_hash)
  File.open(file_name, "r").each_line do |line|
    line_array = line.split(/\W+/)
    line_array.each do |word|
      word = word.downcase
      counter_hash[word] += 1 unless stop_words.include?(word)
    end
  end
  return counter_hash
end

def load_stop_words(stop_words_file_name)
  stop_words = []
  File.open(stop_words_file_name, "r").each_line do |line|
    stop_words << line.chomp
  end
  stop_words
end
