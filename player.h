#ifndef PLAYER_H
#define PLAYER_H

#include "gba.h"

#define DEFAULT_X 120
#define DEAULT_Y 132

//player struct
typedef struct player {
    int x;
    int y;
    int oldX;
    int oldY;
    int height;
    int width;
    int speed;
} PLAYER_OBJ;

extern PLAYER_OBJ player[1];
// void initializePlayer();
void drawPlayer(PLAYER_OBJ* player);
void erasePlayer(PLAYER_OBJ* player);

//player movement
void moveDown(PLAYER_OBJ* player);
void moveUp(PLAYER_OBJ* player);
void moveLeft(PLAYER_OBJ* player);
void moveRight(PLAYER_OBJ* player);

#endif