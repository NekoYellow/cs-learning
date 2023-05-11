def composel(f, g):
    return lambda x: f(g(x))
    #return a function that takes x and returns f(g(x))

# @Deprecated 
composel = lambda f,g: lambda x: f(g(x))


f = composel(lambda x: x*x, lambda y: y+1) # f = (x+1)^2
print(f(12))