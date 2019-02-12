module D2W
  class FilterWordLengthWise
    def filter_word_length_wise(exact_words, phone_no, dw_map)
      length_3 = [];length_03 = [];length_04 = [];length_4 = [];length_5 = [];length_6 = [];length_7 = [];length_10 = []; length_05 = []
      exact_words.each do |word|
        if word.length == 3
          length_3 << word  if phone_no[0..2] == D2W::WordInNumber.new.word_in_number?(phone_no, word, dw_map)
        end

        if word.length == 3
          length_03 << word  if phone_no[3..5] == D2W::WordInNumber.new.word_in_number?(phone_no, word, dw_map)
        end

        if word.length == 4
          length_4 << word  if phone_no[0..3] == D2W::WordInNumber.new.word_in_number?(phone_no, word, dw_map)
        end  

        if word.length == 4
          length_04 << word  if phone_no[6..9] == D2W::WordInNumber.new.word_in_number?(phone_no, word, dw_map)
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
      words = [length_3, length_4, length_5, length_6, length_7, length_03, length_04, length_05, length_10]
      D2W::WordCollection.new.word_collection(words)
    end
  end
end  