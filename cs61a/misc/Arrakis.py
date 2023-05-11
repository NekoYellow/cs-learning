# 21fall final
def near(i, j):
    """Return whether digits i and j have abs diff equal to 1."""
    assert i >= 0 and i < 10 and j >= 0 and j < 10
    return abs(i-j) == 1

def is_worm(n):
    """Return whether non-neg n is a worm.
    
    >>> [n for n in range(200, 300) if is_worm(n)]
    [210, 212, 232, 234]
    """
    if n < 10:
        return True
    return near(n%10, (n//10)%10) and is_worm(n//10)

def sandworm(n):
    """Return the largest worm formed by selecting some digits of non-neg n.
    
    >>> sandworm(31415926535)       # [3]1[4]1[5]92[6]53[5]
    34565
    """
    if n == 0:
        return 0
    def use_last(n):
        "Return the largest worm in n that includes n%10"
        return tooth(n//10, n%10)
    def tooth(n, d):
        "Return the largest worm formed by some digits of n followed by digit d."
        if n == 0:
            return d
        skip = tooth(n//10, d) # unuse last
        return max(skip, 10*use_last(n)+d) if near(n%10, d) else skip
    return max(sandworm(n//10), use_last(n))

def thumper(k, m):
    """Yield all k-digit worms with digits that are at most m, in increasing order.
    
    >>> list(thumper(1, 7)) # 0 has 0 digit
    [1, 2, 3, 4, 5, 6, 7]
    >>> list(thumper(2, 3))
    [10, 12, 21, 23, 32]
    """
    if k == 1:
        yield from range(1, m+1)
    else:
        for w in thumper(k-1, m):
            if w % 10 > 0:
                yield 10*w + (w%10 - 1)
            if w % 10 < m:
                yield 10*w + (w%10 + 1)

class Link:
    empty = ()
    def __init__(self, first, rest=empty):
        self.first, self.rest = first, rest
    def __str__(self):
        string = '<'
        while self.rest is not Link.empty:
            string += str(self.first) + ' '
            self = self.rest
        return string + str(self.first) + '>'

def segment(n, grouped):
    """Return a linked list of linked lists of the digits of positive n.
    Adjacent digits a and b appear in the same linked list if grouped(a, b).
    
    >>> print(segment(314159), lambda a, b: a == 1)
    <<3> <1 4> <1 5> <9>>
    """
    part, parts = Link.empty, Link.empty
    while n:
        if part is Link.empty or grouped(part.first, n%10):
            part = Link(n%10, part)
        else:
            parts = Link(part, parts)
            part = Link(n%10)
        n //= 10
    return Link(part, parts)

def desert(n):
    """Return the shortest linked list whose elements are linked lists of
    digits of worms that together are the digits of positive n.
    
    >>> print(desert(43587))
    <<4 3> <5> <8 7>>
    """
    return segment(n, near)
