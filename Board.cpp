//
// Created by levizor on 10/21/24.
//

#include "Board.h"
#include <array>
#include <iostream>

//init checkers positions on the table

void printBoard(Board board) {
    for (int i=0; i<8; i++) {
        for (int j=0; j<8; j++) {
            std::cout<<"|"<<board.table[i][j]<<"|";
        }
        std::cout<<"\n";
    }
}

bool ret() {
    return true;
}


Board::Board() {
    for (int i=0; i<8; i++) {
        for (int j=0; j<8; j++) {
            if((i+j)%2 == 1) {
                if(i<3) {
                    table[i][j] = blackman;
                }
                else if(i>4) {
                    table[i][j] = whiteman;
                }
                else {
                    table[i][j] = blank;
                }
            } else {
                table[i][j] = blank;
            }
        }
    }
}

bool Board::rightTurn(const int& checker) {
    if(checker%2==queue%2 and checker!=blank) return true;
    return false;
}



std::vector<std::array<int, 2>> Board::getPossibleActions(const std::array<int, 2> from) {
    if(!rightTurn(table[from[0]][from[1]])) return std::vector<std::array<int, 2>>();
    Checker checker = static_cast<Checker>(table[from[0]][from[1]]);
    std::vector<std::array<int, 2>> captures = getPossibleCaptures(from.data(), checker);
    if(captures.size()>0) return captures;

    std::vector<std::array<int, 2>> moves = getPossibleMoves(from.data(), checker);
    return moves;
}

bool isValid (const int& row, const int& col) {
    return row>=0 && row<8 && col>=0 && col<8;
}

std::vector<std::array<int, 2>> Board::getPossibleMoves(const int from[], const Checker& checker) {
    std::vector<std::array<int, 2>> moves;
    const int& row = from[0];
    const int& col = from[1];

    switch (checker) {
        case blackman:
            if(isValid(row+1, col+1) and table[row+1][col+1] == blank) {
                moves.push_back({{row+1, col+1}});
            }
            if(isValid(row+1, col-1) and table[row+1][col-1] == blank) {
                moves.push_back({{row+1, col-1}});
            }
            break;
        case whiteman:
            if(isValid(row-1, col+1) and table[row-1][col+1] == blank) {
                moves.push_back({{row-1, col+1}});
            }
            if(isValid(row-1, col-1) and table[row-1][col-1] == blank) {
                moves.push_back({{row-1, col-1}});
            }
            break;
        case blackking:
        case whiteking:
            for (int i = 1; i < 8; ++i) {
                if (isValid(row - i, col - i) && table[row - i][col - i] == blank) {
                    moves.push_back({{row - i, col - i}});
                } else break;
            }
            for (int i = 1; i < 8; ++i) {
                if (isValid(row - i, col + i) && table[row - i][col + i] == blank) {
                    moves.push_back({{row - i, col + i}});
                } else break;
            }
            for (int i = 1; i < 8; ++i) {
                if (isValid(row + i, col - i) && table[row + i][col - i] == blank) {
                    moves.push_back({{row + i, col - i}});
                } else break;
            }
            for (int i = 1; i < 8; ++i) {
                if (isValid(row + i, col + i) && table[row + i][col + i] == blank) {
                    moves.push_back({{row + i, col + i}});
                } else break;
            }
            break;
        default:
    }
    return moves;
}

std::vector<std::array<int, 2>> Board::getPossibleCaptures(const int from[], const Checker& checker) {
    std::vector<std::array<int, 2>> captures;
    const int &row = from[0];
    const int &col = from[1];

    int directions[][2] = {{1, 1}, {1, -1}, {-1, 1}, {-1, -1}};

    switch (checker) {
        case blackman:
        case whiteman:
            for(int i = 0; i<4; i++) {
                //checking validity
                int* dir = directions[i];
                if (!isValid(row+dir[0], col+dir[1]) or !isValid(row+2*dir[0], col+2*dir[1])) {
                    break;
                }
                //checking all 4 positions for enemies
                int enemy = table[row+dir[0]][col+dir[1]];
                if(enemy!=blank and enemy%2!=checker%2) {
                    //found enemy, check space behind them
                    if(table[row+2*dir[0]][col+2*dir[1]] == blank) {
                        captures.push_back({{row+2*dir[0], col+2*dir[1]}});
                    }
                }
            }

        case blackking:
        case whiteking:
            for(int j = 0; j<4; j++) {
                int* dir = directions[j];
                for(int i=1; i<8; i++) {

                    //checking validity
                    if (!isValid(row+i*dir[0], col+i*dir[1]) or !isValid(row+(i+1)*dir[0], col+(i+1)*dir[1])) {
                        break;
                    }
                    //checking all 4 positions for enemies
                    int enemy = table[row+i*dir[0]][col+i*dir[1]];
                    if(enemy!=blank ) {
                        if(enemy%2!=checker%2) {
                            //found enemy, check space behind them
                            if(table[row+(i+1)*dir[0]][col+(i+1)*dir[1]] == blank) {
                                for (int after=1; after<8; after++) {
                                    if(
                                        !isValid(row+after*dir[0], col+after*dir[1])
                                        or
                                        table[row+after*dir[0]][col+after*dir[1]] != blank
                                        ) break;

                                    captures.push_back({{row+after*dir[0], col+after*dir[1]}});
                                }
                            }
                        }
                        break;
                    }
                }
            }
        default:
    }
    return captures;
}

int Board::makeMove(const std::array<int, 2> from, const std::array<int, 2> to) {



    return 1;
    return evaluate();
}

State Board::evaluate() {
    for(int i=0; i<8; i++) {
        for(int j=0; j<8; j++) {
            if(rightTurn(table[i][j])) {
                if(getPossibleActions({{i,j}}).size()>=0){
                    return moved;
                }
            }
        }
    }
}


