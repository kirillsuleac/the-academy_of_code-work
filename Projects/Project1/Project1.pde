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
float sumOfRadii;

PImage player;
PImage enemy;

void setup() {
  sumOfRadii = playerRadius + enemyRadius;
  player = loadImage("playerOne.png");
  playerHoriPoz = 250;
  playerVertPoz = 250;
  enemy = loadImage("enemyPlayer.png");
  sumOfRadii =  playerRadius + enemyRadius;
  ballHozPosition = 50;
  ballVertPosition = 550;
  ballHozPosition2 = 10;
  ballVertPosition2 = 300;
  ballHozPosition3 = 500;
  ballVertPosition3 = 50;
  size (1000, 1000);
}

void draw() {
  background(0, 150, 200);  
  image (player, playerHoriPoz, playerVertPoz, playerRadius * 2, playerRadius * 2);
  image (enemy, ballHozPosition, ballVertPosition, enemyRadius * 2, enemyRadius * 2);
  image (enemy, ballHozPosition2, ballVertPosition2, enemyRadius * 2, enemyRadius * 2);
  image (enemy, ballHozPosition3, ballVertPosition3, enemyRadius * 2, enemyRadius * 2);
/*  ballHozPosition = ballHozPosition + 2;
  ballVertPosition = ballVertPosition - 2;
  ballHozPosition2 = ballHozPosition2 + 2;
  ballVertPosition2 = ballVertPosition2 - 2;
  ballHozPosition3 = ballHozPosition3 - 2;
  ballVertPosition3 = ballVertPosition3 + 2;
 */ if (keyPressed) {
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
text("distance between circle is: " + distBetweenCenters, 50, 25);
  text("radius player circle is: " + 60, 50, 50);
  text("radius enemy circle is: " + 250, 50, 75);
  distBetweenCenters = dist(playerVertPoz, playerVertPoz, 400, 400);
  if (sumOfRadii > distBetweenCenters) {
    background(255, 0, 0);
    fill(0, 255, 50);
  }
}