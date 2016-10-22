int playerRadius = 60;
int enemyRadius = 250;
float distBetweenCenters;
float sumOfRadii;

void setup() {
  sumOfRadii =  playerRadius + enemyRadius;
  size (600, 600);
}

void draw() {
  background(0, 150, 200);
  ellipse(mouseX, mouseY, playerRadius * 2, playerRadius * 2);
  ellipse(400, 400, enemyRadius * 2, enemyRadius * 2);
  text("distance between circle is: " + distBetweenCenters, 50, 25);
  text("radius player circle is: " + 60, 50, 50);
  text("radius enemy circle is: " + 250, 50, 75);
  distBetweenCenters = dist(mouseX, mouseY, 400, 400);
  if (sumOfRadii > distBetweenCenters) {
    background(255, 0, 0);
    fill(0, 255, 50);
  }
}