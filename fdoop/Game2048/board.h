#ifndef GAME2048_BOARD_H
#define GAME2048_BOARD_H

#include <vector>

class Board {
public:
    Board(): n(4), sc(0), bd(n, std::vector<int>(n, 0)) {}
    int score() { return sc; }
    void print(); // print the board
    void put(); // put a new number (2 or 4) onto the board
    int slide(char); // move the numbers on the board along the given direction;
                    // return 0 if no effect, 1 if made effect, 2 if reached 2048
    bool has_move(); // check whether there is a move

private:
    int n;
    int sc;
    std::vector<std::vector<int>> bd;
    bool is_full();
    void print_line(int);
    int get_digit(int n) { int d = 0; while (n) n /= 10, d++; return d; }
    int slide_left();
    int move_left();
    int merge_left();
    void flip();
    void transpose();
};

#endif