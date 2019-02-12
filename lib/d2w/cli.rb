require 'thor'

module D2W
  class Cli < Thor
    desc "hello NAME", "say hello to NAME"
    def translate(phone_no, path_of_dictionary )
      D2W::PhoneToWord.new.digit2word(phone_no, path_of_dictionary)
    end   
  end
end