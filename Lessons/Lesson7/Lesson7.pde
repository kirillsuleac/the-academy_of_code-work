int ballHozPosition;
int ballVertPosition;

void setup () {
  size(600, 600);
  ballHozPosition = 50;
  ballVertPosition = 550;
}

void draw () {
  fill(0, 150, 100);
  rect(ballHozPosition, ballVertPosition, 100, 100);
  ballHozPosition = ballHozPosition + 1;
  ballVertPosition = ballVertPosition - 1;
}