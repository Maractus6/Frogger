#include "gba.h"
#include "print.h"
#include "car.h"
#include "log.h"
#include "player.h"
#include "font.h"
#include "string.h"
#include "lives.h"

enum STATE {GAME, LOSE, WIN} state;
enum NUMLIVES {ONE=1, TWO=2, THREE=3} lives;

//prototypes
void initialize();
void updateGame();
void drawGame();
void goToGame();
void goToWin();
void goToLose();


//variables
u16 buttons;
u16 oldButtons;
int frameCounter;
u16 hardMode;

//instantiate structs
CAR_OBJ car1 = {0, 80, 0, 80, 10, 30, 1}; //road2
CAR_OBJ car2 = {0, 105, 0, 100, 10, 30, -1}; //road1
LOG_OBJ log1 = {0, 20, 0, 20, 20, 20, 1}; //river 1
LOG_OBJ log_2 = {50, 40, 0, 40, 20, 20, -1}; //river 2
PLAYER_OBJ player1 = {120, 120, 120, 120, 10, 10, 20};
LIVES_DRAWN_OBJ lives1 = {60, 2, 4, 4};
LIVES_DRAWN_OBJ lives2 = {65, 2, 4, 4};
LIVES_DRAWN_OBJ lives3 = {70, 2, 4, 4};



int main() {

    initialize();

    while (1) {
        oldButtons = buttons;
        buttons = REG_BUTTONS;
        //state machine
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
    REG_DISPCTL = MODE(3) | BG2_ENABLE;
    mgba_open();
    mgba_printf("Debugging Initialized");
    oldButtons = buttons;
    buttons = REG_BUTTONS;
    //draws game bg
    drawRectangle(0, 0, 240, 20, GREEN); //win space
    drawRectangle(0, 20, 240, 20, BLUE); //river
    drawRectangle(0, 40, 240, 20, BLUE); //river
    drawRectangle(0, 60, 240, 20, GREEN); //safe space
    drawRectangle(0, 80, 240, 20, GRAY); //road
    drawRectangle(0, 100, 240, 20, GRAY); //road
    drawRectangle(0, 120, 240, 20, GREEN); //safe space
    //draws hard mode and lives string
    drawString(100, 0, "Hard Mode: ", BLACK);
    drawString(0, 0, "Lives: ", BLACK);
    //drawRectangle(140, 0, 4, 4, RED); //shows on/off for hard mode
    lives = 3;
    //draws lives on screen
    drawLives(&lives1);
    drawLives(&lives2);
    drawLives(&lives3);
    state = GAME; //initallizes the state to game
    hardMode = 0; //sets hardMode at off automatically
    
}

void goToWin() {
    state = WIN;
    static int win;
    if (win == 0) {
    fillScreen(BLACK);
    drawString(100, 80, "YOU WIN!", WHITE);
    win = 1;
    }
}
void goToLose() {
    state = LOSE;
    static int lose;
    if (lose == 0) {
    fillScreen(WHITE);
    drawString(100, 80, "YOU LOSE!", BLACK);
    lose = 1;
    }


}
void goToGame() {
    updateGame();
    //state = GAME;
    waitForVBlank();
    drawGame();
}

void updateGame() {
    player1.oldX = player1.x;
    player1.oldY = player1.y;
    //toggles hard mode
    if (BUTTON_PRESSED(BUTTON_A)) {
        hardMode = !hardMode;

    }
    //player movement
    if (BUTTON_PRESSED(BUTTON_DOWN)) {
        moveDown(&player1);
    }
    if (BUTTON_PRESSED(BUTTON_UP)) {
        moveUp(&player1);
    }
    if (BUTTON_PRESSED(BUTTON_LEFT) && (hardMode != 1)) {
        moveLeft(&player1);
    }
    if (BUTTON_PRESSED(BUTTON_RIGHT) && (hardMode != 1)) {
        moveRight(&player1);
    }
    //checks collison btw player and car 1
    if (collision(player1.x, player1.y, player1.width, player1.height, car1.x, car1.y, car1.width, car1.height)) {
        lives--;
        player1.x = 120;
        player1.y = 120;

    }
    //checks collision btw player and car 2
    if (collision(player1.x, player1.y, player1.width, player1.height, car2.x, car2.y, car2.width, car2.height)) {
        lives--;
        player1.x = 120;
        player1.y = 120;
    }
    //checks collision btw player and river and NOT on logs 1 and 2
    if ((collision(player1.x, player1.y, player1.width,player1.height, 0, 20, 240, 40)) && 
    !(collision(player1.x, player1.y, player1.width, player1.height, log1.x, log1.y, log1.width, log1.height) || 
    collision(player1.x, player1.y, player1.width, player1.height, log_2.x, log_2.y, log_2.width, log_2.height))) {
        lives--;
        player1.x = 120;
        player1.y = 120;
    }

    //checks collision with log 1 and moves players based on it
    if (collision(player1.x, player1.y, player1.width,player1.height, log1.x, log1.y, log1.width, log1.height)) {
        player1.x += log1.speed;
    }
    //checks collision with log 2 and moves player based on it
    if (collision(player1.x, player1.y, player1.width,player1.height, log_2.x, log_2.y, log_2.width, log_2.height)) {
        player1.x += log_2.speed;
    }
    //checks if player out of bounds
    if (player1.x <= 0 || player1.x + player1.width >= 240) {
        lives--;
        player1.x = 120;
        player1.y = 120;
    }


    //checks if player got to the last tile and therefore wins game
    if (collision(player1.x, player1.y, player1.width,player1.height, 0, 0, 240, 20)) {
        state = WIN;
    }
    //checks if player lost all lives and therefore loses the game
    if (lives == 0) {
        state = LOSE;
    }
    //updates the car and log movements
    updateCar(&car1);
    updateCar(&car2);
    updateLog(&log1);
    updateLog(&log_2);
}
void drawGame() {
    //erases player's old location depending on what tile they were on
    erasePlayer(&player1);

    //erases logs and car previous locations
    eraseLog(&log1);
    eraseLog(&log_2);
    eraseCar(&car1);
    eraseCar(&car2);

    //redraws player and logs and cars
    drawLog(&log1);
    drawLog(&log_2);
    drawPlayer(&player1);
    drawCar(&car1);
    drawCar(&car2);
    //deletes lives on screen
    if (lives == 2) {
        eraseLives(&lives3);
    }
    if (lives == 1) {
        eraseLives(&lives2);
    }
    if (lives == 0) {
        eraseLives(&lives1);
    }
    //changes hard mode indicator color
    if (hardMode) {
        drawRectangle(160, 2, 4, 4, YELLOW);
    } else {
        drawRectangle(160, 2, 4, 4, RED);
    }
}
