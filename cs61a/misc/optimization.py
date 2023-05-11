# functions as general methods
def improve(update, close, guess=1):    # interface
    """A general method for iterative improvement."""
    while not close(guess):
        guess = update(guess)
    return guess

def golden_update(guess):
    return 1/guess + 1

def square_close_to_successor(guess):
    return approx_eq(guess*guess, guess+1)

def approx_eq(x, y, tolerance=1e-15):
    return abs(x-y) < tolerance


print(improve(golden_update, square_close_to_successor))


# nested definitions
def sqrt(a):
    def sqrt_update(x):
        return average(x, a/x)
    def sqrt_close(x):
        return approx_eq(x*x, a)
    return improve(sqrt_update, sqrt_close)

def average(x, y):
    return (x + y)/2


print(sqrt(64))


# fuctions as returned values
def composel(f, g):
    def h(x):
        return f(g(x))
    return h

def square(x):
    return x*x


identity = composel(square, sqrt)
print(identity(53))


# application: Newton's method

def newton_update(f, df):
    def update(x):
        return x - f(x) / df(x)
    return update

def find_zero(f, df):
    def near_zero(x):
        return approx_eq(f(x), 0, 1e-6)
    return improve(newton_update(f, df), near_zero)

def nth_root_of_a(a, n):
    # return a^(1/n)
    def f(x):
        return power(x, n) - a
    def df(x):
        return n * power(x, n-1)
    return find_zero(f, df)

def power(x, n):
    product = 1
    while n:
        if n & 1: product *= x
        x *= x
        n >>= 1
    return product


print(nth_root_of_a(64, 12))