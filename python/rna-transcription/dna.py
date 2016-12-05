dna_rna = {'A': 'U', 'C': 'G', 'G': 'C', 'T': 'A'}


def to_rna(sequence):
    rna = ''
    for letter in sequence:
        rna += dna_rna[letter]
    return rna
