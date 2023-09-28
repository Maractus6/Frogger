# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
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
# 2 "main.c" 2
# 1 "print.h" 1
# 26 "print.h"
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 1 3 4
# 9 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 1 3 4
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 1 3 4







# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 1 3 4
# 28 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_newlib_version.h" 1 3 4
# 29 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 2 3 4
# 9 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 2 3 4
# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4

# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 35 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 187 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 1 3 4
# 20 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 10 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 2 3 4
# 27 "print.h" 2
# 36 "print.h"

# 36 "print.h"
void mgba_printf_level(int level, const char* ptr, ...);
void mgba_printf(const char* string, ...);
void mgba_break(void);
uint8_t mgba_open(void);
void mgba_close(void);
# 3 "main.c" 2
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
# 4 "main.c" 2
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
# 5 "main.c" 2
# 1 "player.h" 1
# 10 "player.h"
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
# 6 "main.c" 2
# 1 "font.h" 1
extern const unsigned char fontdata_6x8[12288];
# 7 "main.c" 2
# 1 "string.h" 1

void drawChar(int x, int y, char ch, unsigned short color);
void drawString(int x, int y, char *str, unsigned short color);
# 8 "main.c" 2
# 1 "lives.h" 1





typedef struct LivesDrawn {
    int x;
    int y;
    int width;
    int height;
} LIVES_DRAWN_OBJ;

void drawLives(LIVES_DRAWN_OBJ* lives);
void eraseLives(LIVES_DRAWN_OBJ* lives);
# 9 "main.c" 2

enum STATE {GAME, LOSE, WIN} state;
enum NUMLIVES {ONE=1, TWO=2, THREE=3} lives;


void initialize();
void updateGame();
void drawGame();
void goToGame();
void goToWin();
void goToLose();



u16 buttons;
u16 oldButtons;
int frameCounter;
u16 hardMode;


CAR_OBJ car1 = {0, 80, 0, 80, 10, 30, 1};
CAR_OBJ car2 = {0, 105, 0, 100, 10, 30, -1};
LOG_OBJ log1 = {0, 20, 0, 20, 20, 20, 1};
LOG_OBJ log_2 = {50, 40, 0, 40, 20, 20, -1};
PLAYER_OBJ player1 = {120, 120, 120, 120, 10, 10, 20};
LIVES_DRAWN_OBJ lives1 = {60, 2, 4, 4};
LIVES_DRAWN_OBJ lives2 = {65, 2, 4, 4};
LIVES_DRAWN_OBJ lives3 = {70, 2, 4, 4};



int main() {

    initialize();

    while (1) {
        oldButtons = buttons;
        buttons = (*(volatile unsigned short *)0x04000130);

        switch(state) {
            case(GAME):
                goToGame();
                break;
            case(WIN):
                goToWin();
                break;
            case(LOSE):
                goToLose();
                break;
        }

    }
}

void initialize() {
    mgba_open();
    (*(volatile unsigned short *)0x4000000) = ((3) & 7) | ((1 << (8 + ((2) % 4))));
    mgba_open();
    mgba_printf("Debugging Initialized");
    oldButtons = buttons;
    buttons = (*(volatile unsigned short *)0x04000130);

    drawRectangle(0, 0, 240, 20, (((0) & 31) | ((31) & 31) << 5 | ((0) & 31) << 10));
    drawRectangle(0, 20, 240, 20, (((0) & 31) | ((0) & 31) << 5 | ((31) & 31) << 10));
    drawRectangle(0, 40, 240, 20, (((0) & 31) | ((0) & 31) << 5 | ((31) & 31) << 10));
    drawRectangle(0, 60, 240, 20, (((0) & 31) | ((31) & 31) << 5 | ((0) & 31) << 10));
    drawRectangle(0, 80, 240, 20, (((15) & 31) | ((15) & 31) << 5 | ((15) & 31) << 10));
    drawRectangle(0, 100, 240, 20, (((15) & 31) | ((15) & 31) << 5 | ((15) & 31) << 10));
    drawRectangle(0, 120, 240, 20, (((0) & 31) | ((31) & 31) << 5 | ((0) & 31) << 10));

    drawString(100, 0, "Hard Mode: ", (((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
    drawString(0, 0, "Lives: ", (((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));

    lives = 3;

    drawLives(&lives1);
    drawLives(&lives2);
    drawLives(&lives3);
    state = GAME;
    hardMode = 0;

}

void goToWin() {
    state = WIN;
    static int win;
    if (win == 0) {
    fillScreen((((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
    drawString(100, 80, "YOU WIN!", (((31) & 31) | ((31) & 31) << 5 | ((31) & 31) << 10));
    win = 1;
    }
}
void goToLose() {
    state = LOSE;
    static int lose;
    if (lose == 0) {
    fillScreen((((31) & 31) | ((31) & 31) << 5 | ((31) & 31) << 10));
    drawString(100, 80, "YOU LOSE!", (((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
    lose = 1;
    }


}
void goToGame() {
    updateGame();

    waitForVBlank();
    drawGame();
}

void updateGame() {
    player1.oldX = player1.x;
    player1.oldY = player1.y;

    if ((((~buttons & (1<<0)) && !(~oldButtons & (1<<0))))) {
        hardMode = !hardMode;

    }

    if ((((~buttons & (1<<7)) && !(~oldButtons & (1<<7))))) {
        moveDown(&player1);
    }
    if ((((~buttons & (1<<6)) && !(~oldButtons & (1<<6))))) {
        moveUp(&player1);
    }
    if ((((~buttons & (1<<5)) && !(~oldButtons & (1<<5)))) && (hardMode != 1)) {
        moveLeft(&player1);
    }
    if ((((~buttons & (1<<4)) && !(~oldButtons & (1<<4)))) && (hardMode != 1)) {
        moveRight(&player1);
    }

    if (collision(player1.x, player1.y, player1.width, player1.height, car1.x, car1.y, car1.width, car1.height)) {
        lives--;
        player1.x = 120;
        player1.y = 120;

    }

    if (collision(player1.x, player1.y, player1.width, player1.height, car2.x, car2.y, car2.width, car2.height)) {
        lives--;
        player1.x = 120;
        player1.y = 120;
    }

    if ((collision(player1.x, player1.y, player1.width,player1.height, 0, 20, 240, 40)) &&
    !(collision(player1.x, player1.y, player1.width, player1.height, log1.x, log1.y, log1.width, log1.height) ||
    collision(player1.x, player1.y, player1.width, player1.height, log_2.x, log_2.y, log_2.width, log_2.height))) {
        lives--;
        player1.x = 120;
        player1.y = 120;
    }


    if (collision(player1.x, player1.y, player1.width,player1.height, log1.x, log1.y, log1.width, log1.height)) {
        player1.x += log1.speed;
    }

    if (collision(player1.x, player1.y, player1.width,player1.height, log_2.x, log_2.y, log_2.width, log_2.height)) {
        player1.x += log_2.speed;
    }

    if (player1.x <= 0 || player1.x + player1.width >= 240) {
        lives--;
        player1.x = 120;
        player1.y = 120;
    }



    if (collision(player1.x, player1.y, player1.width,player1.height, 0, 0, 240, 20)) {
        state = WIN;
    }

    if (lives == 0) {
        state = LOSE;
    }

    updateCar(&car1);
    updateCar(&car2);
    updateLog(&log1);
    updateLog(&log_2);
}
void drawGame() {

    erasePlayer(&player1);


    eraseLog(&log1);
    eraseLog(&log_2);
    eraseCar(&car1);
    eraseCar(&car2);


    drawLog(&log1);
    drawLog(&log_2);
    drawPlayer(&player1);
    drawCar(&car1);
    drawCar(&car2);

    if (lives == 2) {
        eraseLives(&lives3);
    }
    if (lives == 1) {
        eraseLives(&lives2);
    }
    if (lives == 0) {
        eraseLives(&lives1);
    }

    if (hardMode) {
        drawRectangle(160, 2, 4, 4, (((31) & 31) | ((31) & 31) << 5 | ((0) & 31) << 10));
    } else {
        drawRectangle(160, 2, 4, 4, (((31) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
    }
}
