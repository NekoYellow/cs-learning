class Link:
    """A linked list.""" 
    empty = ()
    def __init__(self, first, rest=empty):
        assert rest is Link.empty or isinstance(rest, Link)
        self.first = first
        self.rest = rest
    def __repr__(self):
        rest_repr = ''
        if self.rest:
            rest_repr = ', ' + repr(self.rest)
        return 'Link(' + repr(self.first) + rest_repr + ')'
    def __str__(self):
        string = '<'
        while self.rest is not Link.empty:
            string += str(self.first) + ' '
            self = self.rest
        return string + str(self.first) + '>'


if __name__ == '__main__':
    l = Link(1, Link(2, Link(3)))
    print(l)
    print(l)