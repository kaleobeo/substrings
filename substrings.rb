require 'pry'
def substrings(string, dictionary)
  string_arr = string.split
  p string_arr
  output = Hash.new(0)
  dictionary.each do |dict_word|
    for word in string_arr do
      if word.downcase.include?(dict_word.downcase)
        puts "dict_word is #{dict_word}"
        puts "word is #{word}"
        output[dict_word.downcase] += 1
      end
    end
  end
  output
end