# using higher-order function <term>
# functions as arguments
def summation(n, term):
    total = 0
    for k in range(1, n+1):
        total += term(k)
    return total

def pi_term(x):
    return 8 / ((4*x - 3)*(4*x - 1))

def cube(x):
    return x*x*x

def pi_sum(n):
    return summation(n, pi_term)

def cube_sum(n):
    return summation(n, cube)


print(pi_sum(100))