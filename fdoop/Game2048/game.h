#ifndef GAME2048_GAME_H
#define GAME2048_GAME_H

#include "board.h"
#include <ctime>
#include <iostream>

class Game {
public:
    Game(): start(time(0)) { std::cout << "Welcome to the game of 2048!" << std::endl; }
    ~Game();
    void play(); // play a whole game

private:
    Board board;
    std::time_t start, end;
    int one_turn(); // process one turn

};
#endif