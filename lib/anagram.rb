require "pry"

class Anagram
  attr_accessor :word
  
  def initialize(word)
    @word = word
  end
  
  def match(array)
    array.each_with_index |anagram, index|
      if anagram.chars.sort.join != @word.chars.sort.join
        array[index]
  end
  
end