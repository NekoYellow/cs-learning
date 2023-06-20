#include "game.h"
#include <fstream>
#include <iostream>

using std::ofstream;        using std::cin;
using std::cout;            using std::endl;

Game::~Game() {
    end = time(0);
    cout << "Game Over" << endl;
    ofstream fout("game2048.csv", ofstream::app);
    char *s = ctime(&start);
    while (*s != '\n') fout << *s++;
    fout << ',' << end-start << ',' << board.score() << '\n';
}

void Game::play() {
    board.put();
    board.print();
    while (true) {
        int r = one_turn();
        if (r == 3) break;
        board.print();
        if (r == 2) {
            cout << "You win!" << endl;
            break;
        }
        if (!board.has_move()) {
            cout << "You lose!" << endl;
            break;
        }
    }
}

int Game::one_turn() {
    char d;
    cin >> d;
    if (d == 'q') return 3;
    int r = board.slide(d);
    if (r == 0 || r == 2) return r;
    board.put();
    return r;
}