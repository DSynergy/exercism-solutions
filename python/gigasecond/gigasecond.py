import datetime

GIGASECOND = 10**9


def add_gigasecond(birthday):
    return birthday + datetime.timedelta(seconds=(GIGASECOND))
