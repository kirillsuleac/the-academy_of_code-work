int pos = 150;

void setup () {
  size (1000, 600);
}

void draw () {
  ellipse (pos+100, 500, 200, 150);
  ellipse (pos+100, 400, 175, 125);
  ellipse (pos+100, 300, 150, 150);
  strokeWeight(5);
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
  
}