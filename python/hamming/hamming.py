def distance(strand1, strand2):
    counter = 0
    for index, letter in enumerate(strand1):
        if letter != strand2[index]:
            counter += 1

    return counter
