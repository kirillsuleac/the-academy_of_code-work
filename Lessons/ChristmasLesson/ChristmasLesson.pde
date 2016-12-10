int pos = 150;

void setup () {
  size (1100, 600);
}

void draw () {
  fill(255, 255, 255);
  ellipse (pos+100, 500, 200, 150);
  ellipse (pos+100, 400, 175, 125);
  ellipse (pos+100, 300, 150, 150);
  strokeWeight(5);
  fill(0, 0, 0);
  point(pos+125, 275);
  point(pos+75, 275);
  point(pos+75, 310);
  point(pos+85, 315);
  point(pos+95, 320);
  point(pos+105, 315);
  point(pos+115, 310);
  rect(pos+50, 220, 100, 10);
  rect(pos+75, 120, 50, 100);
  line(pos+150, 400, 350, 200);
  line(200, 400, 150, 200);
  fill(72, 27, 1);
  rect(850, 450, 50, 100);
  fill(2, 80, 1);
  triangle(725, 450, 1025, 450, 875, 350);
  triangle(750, 400, 1000, 400, 875, 300);
  triangle(775, 350, 975, 350, 875, 250);
  
}