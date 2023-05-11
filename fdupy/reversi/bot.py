from random import seed, randint
from time import time, sleep
from board import *


class Bot():
    def __init__(self, strategy='ec'):
        seed(time())
        self.stgmap = { 'rd':self.get_place_random,
                        'gd':self.get_place_greedy,
                        'ec':self.get_place_ec,
                        'mm':self.get_place_mm
                      }
        self.strategy = strategy
    
    def get_place(self, board, c):
        return self.stgmap[self.strategy](board, c)
    
    def get_place_random(self, board, c):
        sleep(.2)
        st = board.possible_places(c)
        if not st: return None
        rd = randint(1, len(st))
        for p in st:
            rd -= 1
            if not rd: return p
        return None

    def get_place_greedy(self, board, c):
        """Maximum disc strategy."""
        sleep(.2)
        st = board.possible_places(c)
        if not st: return None
        opp = BLACK if c == WHITE else WHITE
        maxcnt = 0
        mi, mj = -1, -1
        for oi, oj in st:
            cnt = 0
            for di, dj in NEIGHBORS:
                i = oi+di
                j = oj+dj
                ii, jj = i, j
                while board.onboard(ii, jj) and board.b[ii][jj] == opp:
                    ii += di
                    jj += dj
                if board.onboard(ii, jj) and board.b[ii][jj] == c:
                    while board.onboard(i, j) and board.b[i][j] == opp:
                        cnt += 1
                        i += di
                        j += dj
            if cnt > maxcnt:
                mi, mj = oi, oj
                maxcnt = cnt
        return mi, mj

    def get_place_ec(self, board, c):
        """Edge creeping strategy."""
        sleep(.2)
        a = list(board.possible_places(c))
        if not a: return None
        a.sort(key=lambda p: min(p[0], N-p[0]) + min(p[1], N-p[1]))
        for p in a:
            if p in board.C() or p in board.X():
                continue
            return p
        return a[0]
    
    def get_place_cc(self, board, c):
        """Center control strategy. Aiming to reduce opponent's mobility."""
        sleep(.2)
        st = board.possible_places(c)
        if not st: return None
        opp = BLACK if c == WHITE else WHITE
        mincnt = N*N
        mi, mj = -1, -1
        for i, j in st:
            bc = Board(board)
            bc.place(i, j, c)
            cnt = len(bc.possible_places(opp))
            if cnt < mincnt:
                mi, mj = i, j
        return mi, mj

    def get_place_mm(self, board, c):
        """Minimax algo. Considers all possible moves and their consequences,
        and chooses the move that leads to the best outcome for the player,
        assuming that the opponent will always choose the move that leads to
        the best outcome for them. Inplemented in method minimax()."""
        st = board.possible_places(c)
        if not st: return None
        o = BLACK if c == WHITE else WHITE
        bv = N*N
        bi, bj = -1, -1
        for i, j in st:
            bc = Board(board)
            bc.place(i, j, c)
            v = self.minimax(board, o, c)
            if v < bv:
                bv = v
                bi, bj = i, j
        return bi, bj

    def minimax(self, board, c, o, depth=4):
        """Calculate the best outcome `c` could achive. Assume depth is odd."""
        if not depth:
            return self.evaluate(board, c)
        if depth % 2:
            best_value = -N*N
            st = board.possible_places(c)
            if not st: return best_value
            for i, j in st:
                bc = Board(board)
                bc.place(i, j, c)
                best_value = max(self.minimax(bc, o, c, depth-1), best_value)
            return best_value
        else:
            best_value = N*N
            st = board.possible_places(c)
            if not st: return best_value
            for i, j in st:
                bc = Board(board)
                bc.place(i, j, c)
                best_value = min(self.minimax(bc, o, c, depth-1), best_value)
            return best_value

    def evaluate(self, board, c):
        """Evaluate the current state."""
        score = 0
        o = BLACK if c == WHITE else WHITE
        for i in range(N):
            for j in range(N):
                score += board.b[i][j] == c
                score -= board.b[i][j] == o
        return score