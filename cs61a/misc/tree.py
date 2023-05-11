class Tree:
    def __init__(self, label, branches=[]):
        self.label = label
        for b in branches:
            assert isinstance(b, Tree)
        self.branches = list(branches)

    def is_leaf(self):
        return not self.branches
    
    def __repr__(self):
        branch_str = ''
        if self.branches:
            branch_str = ', ' + repr(self.branches)
        return f'Tree({self.label}{branch_str})'
    
    def __str__(self):
        return '\n'.join(self.indented())
    
    def indented(self):
        lines = []
        for b in self.branches:
            for line in b.indented():
                lines.append(' ' + line)
        return [str(self.label)] + lines


if __name__ == '__main__':
    t = Tree(1, [Tree(2, [Tree(3)]), Tree(2)])
    print(t)