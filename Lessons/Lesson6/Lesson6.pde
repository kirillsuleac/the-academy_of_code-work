void setup() {
  size(600, 600);
}

void draw (){
  background(255, 0, 0);
  fill(0);
if (keyPressed) {
  if (key == 'a') {
    fill(0, 255, 0);
  }
  if (key == 's') {
    fill(255, 0, 0);
  }
  if (key == 'd') {
    fill(0, 0, 255);
  }
  if (key == 'f') {
    background(0, 0, 255);
  }
  if (key == 'g') {
    background(255, 255, 255);
  }
}
if (mousePressed) {
  if (mouseButton == LEFT) {
    ellipse(300, 300, 500, 500);
  }
  if (mouseButton == RIGHT) {
    rect(50, 50, 500, 500);
  }
}
}