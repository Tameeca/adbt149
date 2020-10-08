int radius;
int points;
int i;       // inner circle
int i2;      // second inner circle
int i3;      // third inner circle
int i4;      // fourth inner circle
int w;       // width
int h;       // height
float t;     // framecount
float f;     // framecount value
void setup() {
  size (600, 600);
  radius = 150;
  points = 11;
  i = 5;
  i2 = 8;
  i3 = 7;
  i4 = 9;
  w = width/2;
  h = height/2;
  f=20.0;
}

void draw () {

  fill(0, 20);
  noStroke();
  rect(0, 0, width, height);

  t = frameCount/f;           // speed of pattern        

  beginShape();
  for (int q=0; q<i; q=q+2) {       
    stroke(#B49EA8);                     // colour of pattern
    noFill();
    vertex(w + radius*cos(0.1*t*q/i +t), h + radius*sin(0.1*t*q/i +t));
  }
  endShape(CLOSE);

  beginShape();
  for (int p=0; p<points; p=p+2) {       
    stroke(#FFFFFF);                     // colour of pattern
    noFill();
    vertex(w + radius*cos(0.1*t*p/points +t), h + radius*sin(0.1*t*p/points +t));
  }
  endShape(CLOSE);

  beginShape();
  for (int r=0; r<i2; r=r+3) {       
    stroke(#7794DE);                     // colour of pattern
    noFill();
    vertex(w + radius*cos(0.1*t*r/i2 +t), h + radius*sin(0.1*t*r/i2 +t));
  }
  endShape(CLOSE);

  beginShape();
  for (int s=0; s<i3; s=s+3) {       
    stroke(#77DEB9);                     // colour of pattern
    noFill();
    vertex(w + radius*cos(0.1*t*s/i3 +t), h + radius*sin(0.1*t*s/i3 +t));
  }
  endShape(CLOSE);

  beginShape();
  for (int u=0; u<i4; u=u+3) {       
    stroke(#A677DE);                     // colour of pattern
    noFill();
    vertex(w + radius*cos(0.1*t*u/i4 +t), h + radius*sin(0.1*t*u/i4 +t));
  }
  endShape(CLOSE);
}

void keyPressed() {
  if (key == 'c') {
    w=width/2;
    h=height/2;
  }
  if (key == 'd') {              // move to the right
    w = w+10;
  }
  if (key == 'a') {              // move to the left
    w=w-10;
  }
  if (key == 's') {              // move down
    h=h+10;
  }
  if (key =='w') {               // move up
    h=h-10;
  }
 
}

void mousePressed() {

  w=mouseX;
  h=mouseY;
}
