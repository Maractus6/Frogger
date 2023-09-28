#include "gba.h"
#include "log.h"

// LOG_OBJ log1;
// LOG_OBJ log2;
//LOG_OBJ logArray[LOG_COUNT];

// void initializeLog() {
//     LOG_OBJ log1 = {0, 22, 0, 22, 22, 40, 22, BROWN}; //river 1
//     LOG_OBJ log2 = {0, 44, 0, 44, 22, 40, -22, BROWN}; //river 2

// }
void updateLog(LOG_OBJ* log) {
    log -> oldX = log -> x;
    log -> x = log -> x + log -> speed;
    if ((log -> x > 239) && (log -> speed == 1)) {
        //log -> y = log -> oldY;
        log -> x = 0;
    }
    if ((log -> x < 0) && (log -> speed == -1)) {
        //log -> y = log -> oldY;
        log -> x = 239;
    }
}

void eraseLog(LOG_OBJ* log) {
    drawRectangle(log -> oldX, log -> y, log -> width, log -> height, BLUE);
}

void drawLog(LOG_OBJ* log) {
    drawRectangle(log -> x, log -> y, log -> width, log -> height, BROWN);
}
