import re


def word_count(phrase):
    word_count = {}
    word_list = re.split('[\W_]', phrase, flags=re.UNICODE)
    for word in word_list:
        word = word.lower()
        if word is '':
            continue
        if word in word_count:
            word_count['%s' % word] += 1
        else:
            word_count.update({'%s' % word: 1})

    return word_count
