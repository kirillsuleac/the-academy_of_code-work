int ballHozPosition;

void setup () {
  size(600, 600);
  ballHozPosition = 50;
} 

void draw () {
  ellipse(ballHozPosition, 300, 100, 100);
  if (ballHozPosition < 200) {
    ballHozPosition = ballHozPosition + 5;
  } 
}