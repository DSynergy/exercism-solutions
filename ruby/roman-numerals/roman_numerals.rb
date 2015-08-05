class Fixnum

  ROMAN_NUMERALS = {
    1000 => 'M',
    900 => 'CM',
    500 => 'D',
    100 => 'C',
    90 => 'XC',
    50 => 'L',
    40 => 'XL',
    10 => 'X',
    9 => 'IX',
    5 => 'V',
    1 => 'I',
  }

  def to_roman
    roman_numeral_array = []
    number = self
    until number == 0
      ROMAN_NUMERALS.each do |key, value|
        if number == key
          roman_numeral_array << value
          number = 0
        elsif number.divmod(key).first >=1
          if number.divmod(key).first == 4
            roman_numeral_array << value
            number = number + key
          end
          if number.divmod(key).first < 4
            number.divmod(key).first.times do
              roman_numeral_array << value
              number = number - key
              end
          end

        end
      end
    end
    return roman_numeral_array.join("")
  end

end
