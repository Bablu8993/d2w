module D2W
  # require 'thor'
  class PhoneToWord 
    def digit2word(phone_no)
       # path_of_dictionary = "/Users/babaloo/Downloads/dictionary.txt"
      dw_map =  {  "2" => ["a", "b", "c"],"3" => ["d", "e", "f"],"4" => ["g", "h", "i"], "5" => ["j", "k", "l"], "6" => ["m", "n", "o"], "7" => ["p", "q", "r", "s"],"8" => ["t", "u", "v"], "9" => ["w", "x", "y", "z"]}
      #this is path of given dictionary in my local machine
      dictionary = []
      D2W::Dictionary.new.dictionary.map(&:downcase).each do |word|
        dictionary <<  word if [3,4,5,6,7,10].include?(word.length)
      end

      # get all letters for numbers in form of array
      
      keys = phone_no.split('').map{|digit| dw_map[digit]}.flatten

      possible_words = []

      # filter words which is possible for given phone number

      dictionary.each do |word|
        possible_words << word if (word.split("") - keys).empty?
      end
      exact_words = []
      # filer exact words for phone number from possible words
      possible_words.each do |word|
        exact_words << word if D2W::WordInNumber.new.word_in_number?(phone_no, word, dw_map)
      end

      p possible_pair = D2W::FilterWordLengthWise.new.filter_word_length_wise(exact_words, phone_no, dw_map)
    end
  end          
end  