module D2W
  class PhoneToWord
    def digit2word(phone_no)
      if phone_no.nil? || phone_no.length != 10 || phone_no.to_s.include?("0") || phone_no.to_s.include?("1")
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
    end
  end
end  