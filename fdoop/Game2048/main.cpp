#include "game.h"

/*
Logic:

Put a number on a random cell
Loop:
    Print board & score
    Get direction
    If asked to quit: break
    Slide (move, merge, move) and add score
    If reached 2048: break (win)
    If the slide made effect: put a new number on a random empty cell
    If cannot make a further move: break (lose)
End
Write game record to file
*/

int main() {
    Game game;
    game.play();
    return 0;
}