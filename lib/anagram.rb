class Anagram
  attr_accessor :word, :results
  
  def initialize(word)
    @word = word
  end
  
  def match(array)
    array.collect do |anagram|
      if anagram.chars.sort.join == @word.chars.sort.join 
        @results << anagram
      else
        @results = []
      end
    @results
  end
  
end