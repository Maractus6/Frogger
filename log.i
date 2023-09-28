# 1 "log.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "log.c"
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
# 2 "log.c" 2
# 1 "log.h" 1






typedef struct log {
    int x;
    int y;
    int oldX;
    int oldY;
    int height;
    int width;
    int speed;
} LOG_OBJ;


void drawLog(LOG_OBJ* log);
void eraseLog(LOG_OBJ* log);
void updateLog(LOG_OBJ* log);
# 3 "log.c" 2
# 13 "log.c"
void updateLog(LOG_OBJ* log) {
    log -> oldX = log -> x;
    log -> x = log -> x + log -> speed;
    if ((log -> x > 239) && (log -> speed == 1)) {

        log -> x = 0;
    }
    if ((log -> x < 0) && (log -> speed == -1)) {

        log -> x = 239;
    }
}

void eraseLog(LOG_OBJ* log) {
    drawRectangle(log -> oldX, log -> y, log -> width, log -> height, (((0) & 31) | ((0) & 31) << 5 | ((31) & 31) << 10));
}

void drawLog(LOG_OBJ* log) {
    drawRectangle(log -> x, log -> y, log -> width, log -> height, (((20) & 31) | ((10) & 31) << 5 | ((5) & 31) << 10));
}
