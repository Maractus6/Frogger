#ifndef LIVES_H
#define LIVES_H

#include "gba.h"

typedef struct LivesDrawn {
    int x;
    int y;
    int width;
    int height;
} LIVES_DRAWN_OBJ;

void drawLives(LIVES_DRAWN_OBJ* lives);
void eraseLives(LIVES_DRAWN_OBJ* lives);

#endif