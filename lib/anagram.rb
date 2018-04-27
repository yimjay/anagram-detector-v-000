require "pry"

class Anagram
  attr_accessor :word
  RESULTS = []
  
  def initialize(word)
    @word = word
  end
  
  def match(array)
    array.collect do |anagram|
      if anagram.chars.sort.join == @word.chars.sort.join 
        binding.pry
        RESULTS << anagram
      end
    end
    RESULTS
  end
  
end