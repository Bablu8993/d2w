module D2W
  class WordCollection
    def word_collection(words)
      possible_pair = []                                                                                                              
      length_3 = words[0]; length_4 = words[1]; length_5 = words[2]; length_6 = words[3]; length_7 = words[4]; length_03 = words[5]; length_04 = words[6]; length_05 = words[7]; length_10 = words[8];
      possible_pair << D2W::GroupingWord.new.groupin_word_3(length_3, length_03, length_04)

      possible_pair << D2W::GroupingWord.new.groupin_word_2(length_3, length_7)

      possible_pair << D2W::GroupingWord.new.groupin_word_2(length_4, length_6)

      possible_pair << D2W::GroupingWord.new.groupin_word_2(length_5, length_05)

      possible_pair << D2W::GroupingWord.new.groupin_word_10(length_10)

      possible_pair
    end
  end
end  