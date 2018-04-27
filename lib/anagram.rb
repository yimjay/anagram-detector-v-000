require "pry"

class Anagram
  attr_accessor :word
  
  def initialize(word)
    @word = word
  end
  
  def match(array)
    result = []
    array.select do |anagram|
      if anagram.chars.sort.join == @word.chars.sort.join
        result << anagram
      end
    end
  end
  
end