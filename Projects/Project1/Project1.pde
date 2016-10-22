int playerRadius = 60;
int enemyRadius = 150;
float distBetweenCenters;
float sumOfRadii;

PImage player;
PImage enemy;

void setup() {
  player = loadImage("playerOne.png");
  enemy = loadImage("enemyPlayer.png");
  sumOfRadii =  playerRadius + enemyRadius;
  size (2000, 1000);
}

void draw() {
  background(0, 150, 200);  
  image (player, mouseX, mouseY, playerRadius * 2, playerRadius * 2);
  image (enemy, 500, 200, enemyRadius * 2, enemyRadius * 2);
  distBetweenCenters = dist(mouseX, mouseY, 400, 400);
  
  if (sumOfRadii > distBetweenCenters) {
   background(0, 0, 0);
  }
}