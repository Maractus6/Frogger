#include "gba.h"
#include "car.h"

// CAR_OBJ car1;
// CAR_OBJ car2;
//CAR_OBJ car[CAR_COUNT];

// void initializeCars() {
//     CAR_OBJ car1 = {0, 88, 0, 88, 22, 40, 22, BLACK}; //road2
//     CAR_OBJ car2 = {0, 110, 0, 88, 22, 40, -22, BLACK}; //road1

// }
//CAR_OBJ* car[CAR_COUNT] = {&car1, &car2};
// update car location
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
//draws the car
void drawCar(CAR_OBJ* car) {
    drawRectangle(car -> x, car -> y, car -> width, car -> height, BLACK);
}
//erases the old car location
void eraseCar(CAR_OBJ* car) {
    drawRectangle(car -> oldX, car -> oldY, car -> width, car -> height, GRAY);
}
