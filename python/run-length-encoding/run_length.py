def encode(data):
    counter = 1
    code = ''
    for index, letter in enumerate(data):
        try:
            if data[index] == data[index + 1]:
                counter += 1
            else:
                if counter > 1:
                    code += str(counter) + letter
                else:
                    code += letter
                counter = 1
        except IndexError:
            if counter > 1:
                code += str(counter) + letter
            else:
                code += letter
            counter = 1
            break

    return code


def decode(compressed_data):
