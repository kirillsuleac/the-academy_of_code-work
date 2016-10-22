int squareHorizontalPoz;
int squareVerticalPoz;

void setup () {
  squareHorizontalPoz = 250;
  squareVerticalPoz = 250;
  size(600, 600);
}

void draw () {
  background(0);
  rect(squareHorizontalPoz, squareVerticalPoz, 100, 50);
  if (keyPressed == true) {
    
    if (key == 'l') {
      background(255, 0, 0);
    }
    
    if (key == ';') {
      background(0, 255, 0);
    }
    
    if (key == 'k') {
      background(0, 0, 255);
    }
    
    if (key == ',') {
      fill(255, 0, 0);
    }
    
    if (key == '.') {
      fill(0, 255, 0);
    }
    
    if (key == '/') {
      fill(255, 255, 0);
    }
    
    if (key == 'a') {
      squareHorizontalPoz = squareHorizontalPoz - 2;
    }
    
    if (key == 'd') {
      squareHorizontalPoz = squareHorizontalPoz + 2;
    }
    
    if (key == 'w') {
      squareVerticalPoz = squareVerticalPoz - 2;
    }
    
    if (key == 's') {
      squareVerticalPoz = squareVerticalPoz + 2;
    }
  }
}