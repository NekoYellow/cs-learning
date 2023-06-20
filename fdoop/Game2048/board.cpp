#include "board.h"
#include <iostream>
#include <string>
#include <random>
#include <utility>

using std::cout;        using std::endl;
using std::string;      using std::rand;
using std::swap;        using std::max;

void Board::print() {
    for (int i = 0; i < n; i++) {
        print_line(-1);
        print_line(i);
    }
    print_line(-1);
    cout << "Your score: " << sc << endl
         << "(\u2191:u) (\u2193:d) (\u2190:l) (\u2192:r) (quit:q): ";
}

void Board::put() {
    if (is_full()) return;
    int x, y;
    do {
        x = rand() % n; y = rand() % n;
    } while (bd[x][y] != 0);
    bd[x][y] = rand()%5 == 0 ? 4 : 2;
}

int Board::slide(char d) {
    int res = 0;
    if (d == 'l') res = slide_left();
    else if (d == 'r') flip(), res = slide_left(), flip();
    else if (d == 'u') transpose(), res = slide_left(), transpose();
    else if (d == 'd') transpose(), flip(), res = slide_left(), flip(), transpose();
    return res;
}

bool Board::has_move() {
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n-1; j++) {
            if (bd[i][j] == bd[i][j+1] || bd[j][i] == bd[j+1][i] || bd[i][j] == 0)
                return true;
        }
        if (bd[i][n-1] == 0) return true;
    }
    return false;
}

bool Board::is_full() {
    for (int i = 0; i < n; i++)
        for (int j = 0; j < n; j++)
            if (bd[i][j] == 0) return false;
    return true;
}

void Board::print_line(int i) {
    int w = 6;
    cout << '|';
    for (int j = 0; j < n; j++) {
        if (i == -1) {
            cout << string(w, '-');
        } else {
            cout << ' ';
            if (bd[i][j] == 0) {
                cout << string(w - 1, ' ');
            } else {
                cout << bd[i][j]
                     << string(w - get_digit(bd[i][j]) - 1, ' ');
            }
        }
        cout << '|';
    }
    cout << endl;
}

int Board::slide_left() {
    int res = 0;
    res = max(res, move_left());
    res = max(res, merge_left());
    res = max(res, move_left());
    return res;
}

int Board::move_left() {
    int res = 0;
    for (int i = 0; i < n; i++) {
        int k = 0;
        for (int j = 0; j < n; j++)
            if (bd[i][j] != 0) {
                if (j != k) res = 1;
                swap(bd[i][k++], bd[i][j]);
            }
    }
    return res;
}

int Board::merge_left() {
    int res = 0;
    for (int i = 0; i < n; i++)
        for (int j = 0; j < n-1; j++)
            if (bd[i][j] != 0 && bd[i][j] == bd[i][j+1]) {
                bd[i][j] <<= 1; if (bd[i][j] == 2048) res = 2;
                bd[i][j+1] = 0;
                sc += bd[i][j];
                res = max(res, 1);
            }
    return res;
}

void Board::flip() {
    for (int i = 0; i < n; i++)
        for (int j = 0; j < n/2; j++)
            swap(bd[i][j], bd[i][n-j-1]);
}

void Board::transpose() {
    for (int i = 0; i < n; i++)
        for (int j = 0; j < i; j++)
            swap(bd[i][j], bd[j][i]);
}