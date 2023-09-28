# 1 "car.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "car.c"
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
# 2 "car.c" 2
# 1 "car.h" 1






typedef struct car {
    int x;
    int y;
    int oldX;
    int oldY;
    int height;
    int width;
    int speed;
} CAR_OBJ;



void drawCar(CAR_OBJ* car);
void eraseCar(CAR_OBJ* car);
void updateCar(CAR_OBJ* car);
# 3 "car.c" 2
# 15 "car.c"
void updateCar(CAR_OBJ* car) {
    car -> oldX = car -> x;
    car -> x = car -> x + car -> speed;
    if ((car -> x > 239) && (car -> speed == 1)) {
        car -> y = car -> oldY;
        car -> x = 0;
    }
    if ((car -> x < 0) && (car -> speed == -1)) {
        car -> y = car -> oldY;
        car -> x = 239;
    }
}

void drawCar(CAR_OBJ* car) {
    drawRectangle(car -> x, car -> y, car -> width, car -> height, (((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
}

void eraseCar(CAR_OBJ* car) {
    drawRectangle(car -> oldX, car -> oldY, car -> width, car -> height, (((15) & 31) | ((15) & 31) << 5 | ((15) & 31) << 10));
}
