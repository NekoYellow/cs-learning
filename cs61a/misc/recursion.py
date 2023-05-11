# basic recursion #

def sum_digits(n):
    if n < 10: return n
    return n%10 + sum_digits(n//10)

# mutual recursion #

def luhn_sum(n):
    if n < 10: return n
    return n%10 + luhn_sum_double(n//10)

def luhn_sum_double(n):
    if n < 10: return sum_digits(n*2)
    return sum_digits(n%10*2) + luhn_sum(n//10)

if False:
    print(luhn_sum(6228480039432267274))    # 80



def cascade(n):
    if n < 10:
        print(n)
    else:
        print(n)
        cascade(n//10)
        print(n)

# equivalent definition
def cascade_(n):
    print(n)
    if n >= 10:
        cascade(n//10)
        print(n)

if True:
    cascade(123)

# inverse version #

def cascade_inv(n):
    grow(n)
    print(n)
    shrink(n)

def f_then_g(f, g, n):
    if n:
        f(n)
        g(n)
    
grow = lambda n: f_then_g(grow, print, n//10)
shrink = lambda n: f_then_g(print, shrink, n//10)

if True:
    cascade_inv(123)



# tree recursion #

def count_partitions(n, m):
    """Count how many ways can we partition n into parts
    up to size m.
    """
    if n == 0:  return 1    # last n = m (one partition)
    if n < 0:   return 0    # last n < m (cannot partition)
    if m == 0:  return 0    # bottom line: m >= 1
    return count_partitions(n-m, m) + count_partitions(n, m-1) # with_m + without_m

if False:
    print(count_partitions(6, 4))   # 9