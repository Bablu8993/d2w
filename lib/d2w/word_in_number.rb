module D2W
  class WordInNumber
    def word_in_number?(phone_no, word, dw_map)
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
        return number.join("")
      end
    end
  end
end  