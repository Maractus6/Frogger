# 1 "lives.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "lives.c"
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
# 2 "lives.c" 2
# 1 "lives.h" 1





typedef struct LivesDrawn {
    int x;
    int y;
    int width;
    int height;
} LIVES_DRAWN_OBJ;

void drawLives(LIVES_DRAWN_OBJ* lives);
void eraseLives(LIVES_DRAWN_OBJ* lives);
# 3 "lives.c" 2

void drawLives(LIVES_DRAWN_OBJ* lives) {
    drawRectangle(lives -> x, lives -> y, lives -> width, lives -> height, (((31) & 31) | ((31) & 31) << 5 | ((31) & 31) << 10));
}

void eraseLives(LIVES_DRAWN_OBJ* lives) {
    drawRectangle(lives -> x, lives -> y, lives -> width, lives -> height, (((0) & 31) | ((31) & 31) << 5 | ((0) & 31) << 10));
}
