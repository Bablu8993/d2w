RSpec.describe D2w do

  before(:all) do
    @dw_map =  {  
                  "2" => ["a", "b", "c"],
                  "3" => ["d", "e", "f"],
                  "4" => ["g", "h", "i"],
                  "5" => ["j", "k", "l"],
                  "6" => ["m", "n", "o"],
                  "7" => ["p", "q", "r", "s"],
                  "8" => ["t", "u", "v"],
                  "9" => ["w", "x", "y", "z"]
                }
    @path_of_dictionary = "/Users/babaloo/Downloads/dictionary.txt"
  end

  it "has a version number" do
    expect(D2w::VERSION).not_to be nil
  end

  
  describe 'Varify phone number' do
    it 'it should return [] if we pass wrong phone number' do
      as = D2W::PhoneToWord.new.digit2word("6086787825",@path_of_dictionary)
      expect(as).to eq []
    end

    it 'it should return [] if we pass no phone number' do
      as = D2W::PhoneToWord.new.digit2word("",@path_of_dictionary)
      expect(as).to eq []
    end

    it 'it should return [] if we pass phone number less than 10 digits' do
      as = D2W::PhoneToWord.new.digit2word("4345678",@path_of_dictionary)
      expect(as).to eq []
    end

    it 'it should return [] if we pass phone number with 0 || 1' do
      as = D2W::PhoneToWord.new.digit2word("4345678",@path_of_dictionary)
      expect(as).to eq []
    end
  end

  describe 'Translate valid phone number to words' do
    it 'it should return translated word  if we pass valid phone number' do
      as = D2W::PhoneToWord.new.digit2word("6686787825",@path_of_dictionary)
      res = [["mot", "opt", "puck"], ["mot", "opt", "ruck"], ["mot", "opt", "suck"], ["mot", "ort", "puck"], ["mot", "ort", "ruck"], ["mot", "ort", "suck"], ["not", "opt", "puck"], ["not", "opt", "ruck"], ["not", "opt", "suck"], ["not", "ort", "puck"], ["not", "ort", "ruck"], ["not", "ort", "suck"], ["oot", "opt", "puck"], ["oot", "opt", "ruck"], ["oot", "opt", "suck"], ["oot", "ort", "puck"], ["oot", "ort", "ruck"], ["oot", "ort", "suck"], ["noun", "struck"], ["onto", "struck"], ["motor", "truck"], ["motor", "usual"], ["nouns", "truck"], ["nouns", "usual"], ["motortruck"]]
      expect(as).to eq res
    end

    it 'it should return translated word  if we pass valid phone number' do
      as = D2W::PhoneToWord.new.digit2word("2282668687",@path_of_dictionary)
      res = [["act", "boo", "tots"], ["act", "boo", "tour"], ["act", "con", "tots"], ["act", "con", "tour"], ["act", "coo", "tots"], ["act", "coo", "tour"], ["bat", "boo", "tots"], ["bat", "boo", "tour"], ["bat", "con", "tots"], ["bat", "con", "tour"], ["bat", "coo", "tots"], ["bat", "coo", "tour"], ["cat", "boo", "tots"], ["cat", "boo", "tour"], ["cat", "con", "tots"], ["cat", "con", "tour"], ["cat", "coo", "tots"], ["cat", "coo", "tour"], ["act", "amounts"], ["act", "contour"], ["bat", "amounts"], ["bat", "contour"], ["cat", "amounts"], ["cat", "contour"], ["acta", "mounts"], ["catamounts"]]
      expect(as).to eq res
    end
  end
   
  describe 'Check that a particular word map to given has_map' do
   
   it 'it should return number if  word exactlly mapped ' do
      phone_no = "2282668687"
      word = "aat"
      as = D2W::WordInNumber.new.word_in_number?(phone_no, word, @dw_map)
      expect(as).to eq "228"
    end

    it 'it should return number if  word exactlly mapped ' do
      phone_no = "2282668687"
      word = "tour"
      as = D2W::WordInNumber.new.word_in_number?(phone_no, word, @dw_map)
      expect(as).to eq "8687"
    end

    it 'it should return number if word is mapped to phone number' do
      phone_no = "2282668687"
      word = "tor"
      as = D2W::WordInNumber.new.word_in_number?(phone_no, word, @dw_map)
      expect(as).to eq nil
    end

    it 'it should return number if  word exactlly mapped ' do
      phone_no = "2282668687"
      word = "truck"
      as = D2W::WordInNumber.new.word_in_number?(phone_no, word, @dw_map)
      expect(as).to eq nil
    end
  end


end
