require "pry"

class Anagram
  attr_accessor :word
  
  def initialize(word)
    @word = word
  end
  
  def match(array)
    array.collect do |anagram|
      if anagram.chars.sort.join == @word.chars.sort.join 
        anagram
      end
    end
  end
  
end