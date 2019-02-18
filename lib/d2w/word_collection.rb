module D2W
  class WordCollection
    def word_collection(words)
    #   possible_pair = []
                                                                                                                
    #   length_3 = words[0]; length_4 = words[1]; length_5 = words[2]; length_6 = words[3]; length_7 = words[4]; length_03 = words[5]; length_04 = words[6]; length_05 = words[7]; length_10 = words[8];
    #   !length_3.empty? && length_3.each do |word3|
    #     !length_03.empty? && length_03.each do |word03|
    #       !length_04.empty? && length_04.each do |word04|
    #         possible_pair << [word3, word03, word04]
    #       end
    #     end
    #   end

    #   !length_3.empty? && length_3.each do |word3|
    #     !length_7.empty? && length_7.each do |word7|
    #         possible_pair << [word3, word7]
    #     end
    #   end
      
    #   !length_4.empty? && length_4.each do |word4|
    #     !length_6.empty? && length_6.each do |word6|
    #         possible_pair << [word4, word6]
    #     end
    #   end

    #   !length_5.empty? && length_5.each do |word5|
    #     !length_05.empty? && length_05.each do |word05|
    #         possible_pair << [word5, word05]
    #     end
    #   end
    #   !length_10.empty? && length_10.each do |word10|
    #       possible_pair << [word10]
    #   end
    #   possible_pair
    binding.pry
    array_of_letters = words.map { |digit| @letters[digit] }
    combination = array_of_letters.shift.product(*array_of_letters).map(&:join)
    end
  end
end  