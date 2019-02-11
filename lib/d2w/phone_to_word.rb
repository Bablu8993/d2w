module D2W
  # include 
  class PhoneToWord
    def digit2word(phone_no)
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
      # 6686787825
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
      possible_pair = []
      length_3 = [];length_4 = [];length_5 = [];length_6 = [];length_7 = [];length_10 = []; length_05 = []

      # collecting all word of lenght 3,4,5,6,7,10
      exact_words.each do |word|
        if word.length == 3
          length_3 << word  if phone_no[0..2] == D2W::WordInNumber.new.word_in_number?(phone_no, word, dw_map)
        end

        if word.length == 4
          length_4 << word  if phone_no[0..3] == D2W::WordInNumber.new.word_in_number?(phone_no, word, dw_map)
        end  

        if word.length == 5
          length_5 << word  if phone_no[0..4] == D2W::WordInNumber.new.word_in_number?(phone_no, word, dw_map)
        end

        if word.length == 5
          length_05 << word  if phone_no[5..9] == D2W::WordInNumber.new.word_in_number?(phone_no, word, dw_map)
        end

        if word.length == 6
          length_6 << word  if phone_no[4..9] == D2W::WordInNumber.new.word_in_number?(phone_no, word, dw_map)
        end

        if word.length == 7
          length_7 << word  if phone_no[3..9] == D2W::WordInNumber.new.word_in_number?(phone_no, word, dw_map)
        end

        if word.length == 10
          length_10 << word  if phone_no[0..9] == D2W::WordInNumber.new.word_in_number?(phone_no, word, dw_map)
        end 
      end
      p length_3
      p length_7
      p length_4
      p length_6
      p length_5
      p length_05
      p length_10
    end
  end          
end  