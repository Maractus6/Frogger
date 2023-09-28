#ifndef LOG_H
#define LOG_H

#include "gba.h"
#define LOG_COUNT 2

typedef struct log {
    int x;
    int y;
    int oldX;
    int oldY;
    int height;
    int width;
    int speed;
} LOG_OBJ;

// void initializeLog();
void drawLog(LOG_OBJ* log);
void eraseLog(LOG_OBJ* log);
void updateLog(LOG_OBJ* log);

#endif