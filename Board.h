//
// Created by levizor on 10/21/24.
//

#ifndef BOARD_H
#define BOARD_H
#include <vector>


enum Checker {
    blank=0,
    blackman=1,
    whiteman=2,
    blackking=3,
    whiteking=4,
};

enum State {
    moved=0,
    captured=1,
    blackwon=2,
    whitewon=3,
    tie=4
};

class Board {
public:
    int queue=0;
    int table[8][8];
    Board();
    int makeMove(std::array<int, 2> from, std::array<int, 2> to);
    std::vector<std::array<int, 2>> getPossibleActions(std::array<int, 2>);

private:
    std::vector<std::array<int, 2>> getPossibleMoves(const int[], const Checker&);
    std::vector<std::array<int, 2>> getPossibleCaptures(const int[], const Checker&);
    State evaluate();
    bool rightTurn(const int& checker);
};



#endif //BOARD_H
