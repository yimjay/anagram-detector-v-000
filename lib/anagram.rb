class Anagram
  attr_accessor :word, :results
  
  def initialize(word)
    @word = word
  end
  
  def match(array)
    array.collect do |anagram|
      anagram.sort == @word.sort ? results << anagram : nil
    end
    @results
  end
  
end