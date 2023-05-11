def curried_pow(x):
    def h(y):
        return pow(x, y)
    return h

def map_to_range(start, end, f):
    while start <= end:
        print(f(start))
        start += 1


# map_to_range(0, 10, curried_pow(2))


# automate curring
def curry2(f):
    """Return a curried version of the given 2-argument function"""
    def g(x):
        def h(y):
            return f(x, y)
        return h
    return g

def uncurry2(g):
    def f(x, y):
        return g(x)(y)
    return f


pow_curried = curry2(pow)
map_to_range(0, 10, pow_curried(2))