require "pry"

class Anagram
  attr_accessor :word
  
  def initialize(word)
    @word = word
  end
  
  def match(array)
    array.each_with_index do |anagram, index|
      if anagram.chars.sort.join != @word.chars.sort.join
        array.delete_at(index)
      binding.pry
      end
    end
  end
  
end