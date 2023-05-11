from copy import deepcopy

BLACK = 'o'
WHITE = '-'
SPACE = ' '
N = 8
NEIGHBORS = [(-1,-1),(-1,0),(-1,1),(0,-1),(0,1),(1,-1),(1,0),(1,1)]

class Board:

    def __init__(self, board=None):
        self.b = [[SPACE]*N for _ in range(N)]
        self.b[N//2-1][N//2-1] = WHITE
        self.b[N//2-1][N//2] = BLACK
        self.b[N//2][N//2-1] = BLACK
        self.b[N//2][N//2] = WHITE
        if board:
            self.b = deepcopy(board.b)

    def possible_places(self, player):
        opp = BLACK if player == WHITE else WHITE
        res = set()
        for i in range(N):
            for j in range(N):
                if self.b[i][j] == opp:
                    for di, dj in NEIGHBORS:
                        if self.check(i, j, player, di, dj):
                            res.add((i+di, j+dj))
        return res
    
    def onboard(self, i, j):
        return i >= 0 and i < N and j >= 0 and j < N

    def check(self, i, j, p, di, dj):
        o = BLACK if p == WHITE else WHITE
        if not self.onboard(i, j) or not self.onboard(i+di, j+dj):
            return False
        if self.b[i][j] != o:
            return False
        if self.b[i+di][j+dj] != SPACE:
            return False
        while self.onboard(i, j) and self.b[i][j] == o:
            i -= di
            j -= dj
        return self.onboard(i, j) and self.b[i][j] == p
    
    def place(self, i, j, player):
        assert (i, j) in self.possible_places(player)
        self.b[i][j] = player
        opp = BLACK if player == WHITE else WHITE
        oi, oj = i, j
        for di, dj in NEIGHBORS:
            i = oi+di
            j = oj+dj
            ii, jj = i, j
            while self.onboard(ii, jj) and self.b[ii][jj] == opp:
                ii += di
                jj += dj
            if self.onboard(ii, jj) and self.b[ii][jj] == player:
                while self.onboard(i, j) and self.b[i][j] == opp:
                    self.b[i][j] = player
                    i += di
                    j += dj

    def C(self):
        return set([(0,1), (0,N-2), (1,0), (1,N-1), (N-2,0), (N-2,N-1), (N-1,1), (N-1,N-2)])

    def X(self):
        return set([(1,1), (1,N-2), (N-2,1), (N-2,N-2)])
    
    def __str__(self) -> str:
        rpr = " ".join(['%']+[chr(ord('A')+j) for j in range(N)]) + '\n'
        i = 1
        for row in self.b:
            rpr += str(i) + " " + " ".join(row) + "\n"
            i += 1
        return rpr