class Complement
#takes dna and makes rna complement
  COMPLEMENTS = { 'G' => 'C',
                 'T' => 'A',
                 'C' => 'G',
                 'A' => 'U',
               }

  def self.of_dna(strands)
    complements = strands.chars.map do |n|
      COMPLEMENTS[n]
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
      COMPLEMENTS.key(n)
    end.join

    if complements.size == strands.size
      complements
    else
      raise ArgumentError
    end
  end

end
