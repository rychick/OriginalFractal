public void setup() {
  size(800, 800);
  ellipseMode(CENTER);
  frameRate(60);
}

public void draw() {
  background(135, 206, 235);
  noStroke();
  fill(0,255,0);
  rect(350,400, 100 ,400);
  ellipse(500,650,200,130);
  ellipse(300,650,200,130);
  myFractal(400, 400, 500);
 
}

public void myFractal(int x, int y, float siz) {
  int diam = 0;
  float r = 255;
  noFill();
  while (diam < 30) {
    strokeWeight(2);
    stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    ellipse(x, y, siz, siz);
    diam++;
    r-=255/30.0;
  }
  if (siz > 10) {
    fill(255,0,0);
    ellipse(x-siz/2, y, siz/4, siz/4);
    ellipse(x-siz*(float)Math.sqrt(2)/8, y-siz*(float)Math.sqrt(2)/8, siz/4, siz/4);
    ellipse(x, y-siz/2, siz/4, siz/4);
    ellipse(x+siz*(float)Math.sqrt(2)/8, y-siz*(float)Math.sqrt(2)/8, siz/4, siz/4);
    ellipse(x+siz/2, y, siz/4, siz/4);
    ellipse(x+siz*(float)Math.sqrt(2)/8, y+siz*(float)Math.sqrt(2)/8, siz/4, siz/4);
    ellipse(x, y+siz/2, siz/4, siz/4);
    ellipse(x-siz*(float)Math.sqrt(2)/8, y+siz*(float)Math.sqrt(2)/8, siz/4, siz/4);
    myFractal(x, y, siz/1.5);
  }
}
