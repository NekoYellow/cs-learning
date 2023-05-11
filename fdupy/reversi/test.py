from board import *
from bot import *


class Test:

    def __init__(self, stg1, stg2):
        """Test two bots using different strategies."""
        self.board = Board()
        self.bots = {}
        self.bots[BLACK], self.bots[WHITE] = Bot(stg1), Bot(stg2)

    def get_place(self, c):
        if not self.board.possible_places(c):
            return None
        return self.bots[c].get_place(self.board, c)

    def count(self):
        """count discs for both players"""
        nb, nw = 0, 0
        for row in self.board.b:
            for disc in row:
                nb += disc==BLACK
                nw += disc==WHITE
        return nb, nw

    def run(self):
        print("Bot vs bot")
        print("Game start!")
        print(self.board)

        cnt = 4 # count of discs on the board
        turn = 1 # swaps between 0 and 1
        flag1, flag2 = False, False
    
        while cnt < 64:
            if flag1 and flag2:
                print("No player can take a further move, game ends!")
                break
    
            if turn: # p1, black
                turn ^= 1
                p = self.bots[BLACK].get_place(self.board, BLACK) # change strategy here
                if not p:
                    flag1 = True
                    print(f"No place for '{BLACK}'\n")
                    continue
                
                flag1 = False
                i, j = p
                self.board.place(i, j, BLACK)
                cnt += 1
                print(f"'{BLACK}' placed at {chr(ord('A')+j)}{i+1}")
    
            else: # p2, white
                turn ^= 1
                p = self.bots[WHITE].get_place_random(self.board, WHITE) # change strategy here
                if not p:
                    flag2 = True
                    print(f"No place for '{WHITE}'\n")
                    continue
                
                flag2 = False
                i, j = p
                self.board.place(i, j, WHITE)
                cnt += 1
                print(f"'{WHITE}' placed at {chr(ord('A')+j)}{i+1}")
    
            print(self.board)
    
        print("Game ended!")
        nb, nw = self.count()
        print(f"The final score is {nb}:{nw}.")
        if nb == nw: print("Draw!")
        else: print(f"The winner is {'player1' if nb>nw else 'player2'}!")


if __name__ == "__main__":
    stg1, stg2 = input().split()
    test = Test(stg1, stg2)
    test.run()