from collections import OrderedDict

# OrderedDict Solution
class LRU_OrderedDict(object):
    def __init__(self, max_size=100):
        self.max_size = max_size
        self.cache = OrderedDict()

    def get(self, key):
        value = self.cache.pop(key, None)
        if value is None:
            return -1
        self.cache[key] = value

        return value

    def put(self, key, value):
        if not self.cache.pop(key, None) and self.max_size == len(self.cache):
            self.cache.popitem(last=False)
        self.cache[key] = value
