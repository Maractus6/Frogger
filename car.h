#ifndef CAR_H
#define CAR_H

#include "gba.h"
#define CAR_COUNT 2

typedef struct car {
    int x;
    int y;
    int oldX;
    int oldY;
    int height;
    int width;
    int speed;
} CAR_OBJ;

//extern CAR_OBJ car[CAR_COUNT];
// void initializeCars();
void drawCar(CAR_OBJ* car);
void eraseCar(CAR_OBJ* car);
void updateCar(CAR_OBJ* car);

#endif
