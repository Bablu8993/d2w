module D2W
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
        number = []
        word.split("").each do |char|
          dw_map.each do |k, v|
            if v.include?(char)
              number << k
              break
            end
          end
        end

        if phone_no.include?number.join("")
          exact_words << word 
        end
      end

      possible_pair = []
      length_3 = [];length_4 = [];length_5 = [];length_6 = [];length_7 = [];length_10 = []
      exact_words.each do |word|
        length_3 << word if word.length == 3
        length_5 << word if word.length == 5
        length_4 << word if word.length == 4
        length_10 << word if word.length == 10
        length_7 << word if word.length == 7
        length_6 << word if word.length == 6
      end
      binding.pry
      
      final_words = []
      !length_3.empty? && length_3.each do |word|
        
      end



      #   possible_words << word if [3,4,5,6,7,10].include?(word.length)
      # end


      binding.pry








      # total_number = keys.length - 1 # total numbers
      #Loo through all letters and get matching records with dictionary
      # for i in (2..8)
      #   binding.pry
      #   first_array = keys[0..i]
      #   second_array = keys[i + 1..8]
      #   next if first_array.length < 3 || second_array.length < 3
      #   first_combination = first_array.shift.product(*first_array).map(&:join) # Get product of arrays
      #   next if first_combination.nil?
      #   second_combination = second_array.shift.product(*second_array).map(&:join)
      #   next if second_combination.nil?
      #   results[i] = [(first_combination & dictionary), (second_combination & dictionary)] # get common values from arrays
      # end
      # #arrange words like we need as a output
      # final_words = []
      # results.each do |key, combinataions|
      # binding.pry
      #   next if combinataions.first.nil? || combinataions.last.nil?
      #   combinataions.first.product(combinataions.last).each do |combo_words|
      #     final_words << combo_words
      #   end
      # end
      # # for all numbers
      # final_words << (keys.shift.product(*keys).map(&:join) & dictionary).join(", ") # matche with all character
      # final_words
    end


  end
# final_words = NumberToWord.new().letter_combinations("6686787825")
# print final_words          
end  