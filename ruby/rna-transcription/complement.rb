class Complement

#takes dna and makes rna complement
  DNA = { 'G' => 'C',
          'T' => 'A',
          'C' => 'G',
          'A' => 'U',
        }

  RNA = {'G' => 'C',
         'A' => 'T',
         'C' => 'G',
         'U' => 'A',
        }

  def self.of_dna(strands)
    complements = strands.chars.map do |n|
      DNA.select do |dna|
        n == dna
      end.values
    end.join

    if complements.size == strands.size
      complements
    else
      raise ArgumentError
    end
  end

#takes rna and makes dna complement

  def self.of_rna(strands)
    complements = strands.chars.map do |n|
      RNA.select do |rna|
        n == rna
      end.values
    end.join

    if complements.size == strands.size
      complements
    else
      raise ArgumentError
    end
  end

end
