require 'thor'

module D2W
  class Cli < Thor
    desc "hello NAME", "say hello to NAME"
    def translate(phone_no)
      D2W::PhoneToWord.new.digit2word(phone_no)
    end   
  end
end