module D2W
  # require 'thor'
  class PhoneToWord 
    def digit2word(phone_no)
       if phone_no.nil? || phone_no.length != 10 || phone_no.split('').select{|a|(a.to_i == 0 || a.to_i == 1)}.length > 0
        p "something wrong with phone number"
        return
       end
      dw_map =  {  
                  "2" => ["a", "b", "c"],
                  "3" => ["d", "e", "f"],
                  "4" => ["g", "h", "i"],
                  "5" => ["j", "k", "l"],
                  "6" => ["m", "n", "o"],
                  "7" => ["p", "q", "r", "s"],
                  "8" => ["t", "u", "v"],
                  "9" => ["w", "x", "y", "z"]
                }
      dictionary = []

      #this is path of given dictionary in my local machine
      file_path = "/Users/babaloo/Downloads/dictionary.txt"
      
      #fetching dictionay in my local dictionary array with leght 3,5,7,4,6,10

      File.foreach( file_path ) do |word|
        word = word.chop.to_s.downcase
        dictionary <<  word if [3,4,5,6,7,10].include?(word.length)
      end

      # get all letters for numbers in form of array
      
      keys = phone_no.split('').map{|digit| dw_map[digit]}.flatten

      possible_words = []

      # filter words which is possible for given phone number

      dictionary.each do |word|
        if (word.split("") - keys).empty?
          possible_words << word
        end
      end
      exact_words = []
      # filer exact words for phone number from possible words
      possible_words.each do |word|
        exact_words << word if D2W::WordInNumber.new.word_in_number?(phone_no, word, dw_map)
      end
      p possible_pair = D2W::FilterWordLengthWise.new.filter_word_length_wise(exact_words,phone_no, dw_map)
    end
  end          
end  