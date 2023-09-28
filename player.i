# 1 "player.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "player.c"
# 1 "player.h" 1



# 1 "gba.h" 1




typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long s64;
typedef unsigned long long u64;
# 23 "gba.h"
extern volatile unsigned short* videoBuffer;
# 35 "gba.h"
int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2);


void waitForVBlank();
# 55 "gba.h"
void drawRectangle(int x, int y, int width, int height, volatile unsigned short color);
void fillScreen(volatile unsigned short color);
# 71 "gba.h"
extern unsigned short oldButtons;
extern unsigned short buttons;




extern unsigned short hardMode;
# 5 "player.h" 2





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

void drawPlayer(PLAYER_OBJ* player);
void erasePlayer(PLAYER_OBJ* player);


void moveDown(PLAYER_OBJ* player);
void moveUp(PLAYER_OBJ* player);
void moveLeft(PLAYER_OBJ* player);
void moveRight(PLAYER_OBJ* player);
# 2 "player.c" 2





void drawPlayer(PLAYER_OBJ* player) {
    drawRectangle(player -> x, player -> y, player -> width, player -> height, (((31) & 31) | ((31) & 31) << 5 | ((31) & 31) << 10));
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
        drawRectangle(player -> oldX, player -> oldY, player -> width, player -> height, (((0) & 31) | ((31) & 31) << 5 | ((0) & 31) << 10));
    }
    else if ((player -> oldY == 20) || (player -> oldY == 40)) {
        drawRectangle(player -> oldX, player -> oldY, player -> width, player -> height, (((0) & 31) | ((0) & 31) << 5 | ((31) & 31) << 10));
    }
    else if ((player -> oldY == 80) || (player -> oldY == 100)) {
        drawRectangle(player -> oldX, player -> oldY, player -> width, player -> height, (((15) & 31) | ((15) & 31) << 5 | ((15) & 31) << 10));
    }
}
