import string


def is_pangram(phrase):
    counter = 0
    for letter in string.ascii_lowercase:
        if letter in phrase.lower():
            counter += 1
    if counter == 26:
        return True
    else:
        return False
