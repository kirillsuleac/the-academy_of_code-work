int ballWidth;
int ballHeight;

void setup () {
  size(600, 600);
  ballWidth = 50;
  ballHeight = 550;
}

void draw () {
  ellipse(300, 300, ballWidth, ballHeight);
  if (mousePressed == true) {
    if (mouseButton == LEFT) {
      ballWidth = ballWidth + 1;
    }
    if (mouseButton == RIGHT) {
      ballHeight = ballHeight - 1;
    }
  }
}