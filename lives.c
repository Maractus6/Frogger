#include "gba.h"
#include "lives.h"

void drawLives(LIVES_DRAWN_OBJ* lives) {
    drawRectangle(lives -> x, lives -> y, lives -> width, lives -> height, WHITE);
}

void eraseLives(LIVES_DRAWN_OBJ* lives) {
    drawRectangle(lives -> x, lives -> y, lives -> width, lives -> height, GREEN);
}
