module D2W
  class GroupingWord
    def groupin_word_2(first_collection, second_collection)
      possible_pair = []
      !first_collection.empty? && first_collection.each do |word_1|
        !second_collection.empty?  && second_collection.each do |word_2|
            possible_pair << [word_1, word_2]
        end
      end
      possible_pair
    end

    def groupin_word_3(first_collection, second_collection, third_collection)
      possible_pair = []
      !first_collection.empty? && first_collection.each do |word3|
        !second_collection.empty? && second_collection.each do |word03|
          !third_collection.empty? && third_collection.each do |word04|
            possible_pair << [word3, word03, word04]
          end
        end
      end
      possible_pair
    end

    def groupin_word_10(first_collection)
      possible_pair = []
      !first_collection.empty? && first_collection.each do |word10|
            possible_pair << [word10]
        end
      possible_pair
    end
  end
end