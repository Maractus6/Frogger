#include "player.h"
#include "gba.h"

// void initializePlayer() {
// }

void drawPlayer(PLAYER_OBJ* player) {
    drawRectangle(player -> x, player -> y, player -> width, player -> height, WHITE);
}
void moveUp(PLAYER_OBJ* player) {
    if (player -> y >= 20) {
        player -> oldY = player -> y;
        player -> y = (player -> y) - (player -> speed);
    }
}
void moveDown(PLAYER_OBJ* player) {
    if (player -> y <= 120) {
        player -> y = (player -> y) + (player -> speed);
    }
}
void moveLeft(PLAYER_OBJ* player) {
    if (player -> x >= 20) {
        player -> x = (player -> x) - (player -> speed);
    }
}
void moveRight(PLAYER_OBJ* player) {
    if (player -> x <= 200) {
        player -> x = (player -> x) + (player -> width);
    }
}
void erasePlayer(PLAYER_OBJ* player) {
    if ((player->oldY == 0) || (player -> oldY == 60) || (player -> oldY == 120)) {
        drawRectangle(player -> oldX, player -> oldY, player -> width, player -> height, GREEN);
    }
    else if ((player -> oldY == 20) || (player -> oldY == 40)) {
        drawRectangle(player -> oldX, player -> oldY, player -> width, player -> height, BLUE);
    }
    else if ((player -> oldY == 80) || (player -> oldY == 100)) {
        drawRectangle(player -> oldX, player -> oldY, player -> width, player -> height, GRAY);
    }
}

