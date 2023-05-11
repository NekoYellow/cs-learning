def trace(fn):
    def wrapped(x):
        print("->{.__name__}({})".format(fn, x)) # f"->{fn.__name__}({x})"
        return fn(x)
    return wrapped

@trace
def factorial(x):
    if not x: return 1
    return x * factorial(x-1)

print(factorial(4))