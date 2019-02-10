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
  
      dictionary = []
      file_path = "/Users/babaloo/Downloads/dictionary.txt"
      #this is path of giver dictionary in my local machine
      File.foreach( file_path ) do |word|
        dictionary.push word.chop.to_s.downcase
      end
      
    end
  end       
end  