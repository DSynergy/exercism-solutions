class Raindrops
  class << self

    RAINDROPS = { 3 => "Pling",
                  5 => "Plang",
                  7 => "Plong" }

    def convert(number)
      number = number.to_i
      sounds = RAINDROPS.select do |prime|
        number % prime == 0
      end.values.join
      sounds.empty? ? number.to_s : sounds
    end

  end
end
