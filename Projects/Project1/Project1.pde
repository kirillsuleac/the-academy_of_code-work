int playerRadius = 60;
int enemyRadius = 150;
int playerHoriPoz;
int playerVertPoz;
int ballHozPosition;
int ballVertPosition;
int ballHozPosition2;
int ballVertPosition2;
int ballHozPosition3;
int ballVertPosition3;

float distBetweenCenters;
float sumOfRadii;

PImage player;
PImage enemy;

void setup() {
  player = loadImage("playerOne.png");
  playerHoriPoz = 250;
  playerVertPoz = 250;
  enemy = loadImage("enemyPlayer.png");
  sumOfRadii =  playerRadius + enemyRadius;
  ballHozPosition = 50;
  ballVertPosition = 550;
  size (1000, 1000);
}

void draw() {
  background(0, 150, 200);  
  image (player, playerHoriPoz, playerVertPoz, 100, 100);
  image (enemy, ballHozPosition, ballVertPosition, 200, 200);
  image (enemy, ballHozPosition2, ballVertPosition2, 200, 200);
  image (enemy, ballHozPosition3, ballVertPosition3, 200, 200);
  ballHozPosition = ballHozPosition + 2;
  ballVertPosition = ballVertPosition - 2;
  ballHozPosition2 = ballHozPosition2 + 2;
  ballVertPosition2 = ballVertPosition2 - 2;
  ballHozPosition3 = ballHozPosition3 + 2;
  ballVertPosition3 = ballVertPosition3 - 2;
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
}