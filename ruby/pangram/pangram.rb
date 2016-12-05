class Pangram

  VERSION = 1

  def self.is_pangram?(str)
    counter = 0
    range = ('a'..'z').to_a
    str.downcase.each_char do |letter|
      if range.include?(letter)
        range.delete(letter)
        counter += 1
      end
    end
    if counter == 26
      return true
    else
      return false
    end
  end

end
