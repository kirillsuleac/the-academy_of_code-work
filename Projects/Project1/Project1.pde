int playerRadius = 50;
int enemyRadius = 100;
int playerHoriPoz;
int playerVertPoz;
int ballHozPosition;
int ballVertPosition;
int ballHozPosition2;
int ballVertPosition2;
int ballHozPosition3;
int ballVertPosition3;
float distBetweenCenters;
float distBetweenCenters2;
float distBetweenCenters3;
float sumOfRadii;

boolean gameOver;

PImage player;
PImage enemy;

void setup() {
  size (1000, 1000);
  
  sumOfRadii = playerRadius + enemyRadius;
    
  player = loadImage("playerOne.png");
  enemy = loadImage("enemyPlayer.png");
  
  playerHoriPoz = 500;
  playerVertPoz = 300;
  
  ballHozPosition = 50;
  ballVertPosition = 550;
  ballHozPosition2 = 10;
  ballVertPosition2 = 300;
  ballHozPosition3 = 500;
  ballVertPosition3 = 50;
}

void draw() {
  background(0, 150, 200);
  image (player, playerHoriPoz, playerVertPoz, playerRadius * 2, playerRadius * 2);
  image (enemy, ballHozPosition, ballVertPosition, enemyRadius * 2, enemyRadius * 2);
  image (enemy, ballHozPosition2, ballVertPosition2, enemyRadius * 2, enemyRadius * 2);
  image (enemy, ballHozPosition3, ballVertPosition3, enemyRadius * 2, enemyRadius * 2);
  ballHozPosition = ballHozPosition + 2;
  ballVertPosition = ballVertPosition - 2;
  ballHozPosition2 = ballHozPosition2 + 2;
  ballVertPosition2 = ballVertPosition2 - 2;
  ballHozPosition3 = ballHozPosition3 - 2;
  ballVertPosition3 = ballVertPosition3 + 2;
    if (keyPressed) {
    if (key == 'a') {
      playerHoriPoz = playerHoriPoz - 5;
    }
    
    if (key == 'd') {
      playerHoriPoz = playerHoriPoz + 5;
    }
    
    if (key == 'w') {
      playerVertPoz = playerVertPoz - 5;
    }
    
    if (key == 's') {
      playerVertPoz = playerVertPoz + 5;
    }
}
  distBetweenCenters = dist(playerHoriPoz, playerVertPoz, ballHozPosition, ballVertPosition);
  distBetweenCenters2 = dist(playerHoriPoz, playerVertPoz, ballHozPosition2, ballVertPosition2);
  distBetweenCenters3 = dist(playerHoriPoz, playerVertPoz, ballHozPosition3, ballVertPosition3);
  if (sumOfRadii > distBetweenCenters) {
    gameOver = true;
    background(255, 0, 0);
    fill(0, 255, 50);
  }
  if (sumOfRadii > distBetweenCenters2) {
    gameOver = true;
    background(255, 0, 0);
    fill(0, 255, 50);
  }
  if (sumOfRadii > distBetweenCenters3) {
    gameOver = true;
    background(255, 0, 0);
    fill(0, 255, 50);
  }
  if (gameOver == true) {
    background(255, 0, 0);
  }
}