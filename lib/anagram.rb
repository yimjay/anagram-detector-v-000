require "pry"

class Anagram
  attr_accessor :word, :results
  @results = []
  
  def initialize(word)
    @word = word
  end
  
  def match(array)
    array.collect do |anagram|
      if anagram.chars.sort.join == @word.chars.sort.join 
        binding.pry
        @results << anagram
      end
    end
    @results
  end
  
end