from board import *
from bot import *


class Game:

    def __init__(self, player1, player2):
        """player1, player2 are either 'h' or 'b'"""
        self.board = Board()
        self.p1, self.p2 = player1 == 'h', player2 == 'h'
        if not (self.p1 and self.p2):
            self.bot = Bot()

    def get_place(self, player, c):
        if not self.board.possible_places(c):
            return None
        
        if player: # human
            r = input(f"Please input the place to put '{c}' (col&row): ") # e.g. C4
            while not (r[0].isalpha() and r[1].isdigit()):
                r = input("invalid input! Please input again: ")
            r = (int(r[1])-1, ord(r[0].upper())-ord('A'))
            while r not in self.board.possible_places(c):
                print("invalid place!")
                r = input(f"Please input the place to put '{c}' (col&row): ") # e.g. C4
                while not (r[0].isalpha() and r[1].isdigit()):
                    r = input("invalid input! Please input again: ")
                r = (int(r[1])-1, ord(r[0].upper())-ord('A'))
            return r
        
        else: # bot
            return self.bot.get_place(self.board, c)

    def count(self):
        """count discs for both players"""
        nb, nw = 0, 0
        for row in self.board.b:
            for disc in row:
                nb += disc==BLACK
                nw += disc==WHITE
        return nb, nw

    def run(self):
        print(f"player1 is {'human' if self.p1 else 'bot'}, player2 is {'human' if self.p2 else 'bot'}")
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
                p = self.get_place(self.p1, BLACK)
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
                p = self.get_place(self.p2, WHITE)
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
    print("Welcome to Reversi!")
    while True:
        print("Please choose the players! Input 'h' for human or 'b' for bot:")

        r1 = input("Choosing player1: ")
        while r1 != 'h' and r1 != 'b':
            print("Who is this?")
            r1 = input("Choosing player1: ")
        print("Player1 chosen!")
        
        r2 = input("Choosing player2: ")
        while r2 != 'h' and r2 != 'b':
            print("Who is this?")
            r2 = input("Choosing player2: ")
        print("Player2 chosen!\n")

        game = Game(r1, r2)
        game.run()

        r = input("Play again? [y/n] ")
        if r[0].lower() != 'y': break
    
    print("Goodbye!")