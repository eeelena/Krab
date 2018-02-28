int button1Color=255;
int button2Color=255;
int x1=250;
int x2=250;
int y1=250;
int y2=250;
int size1=50;
int size2=50;
void setup(){
  background(0);
  size(600, 600); 
  noFill(); 
  stroke(255); 
}
void draw(){
fill(button1Color);
  ellipse(x1, y1, size1, size1);
  fill(button2Color);
  ellipse(x2, y2, size2, size2);

  float distance1 = dist(x1, y1, mouseX, mouseY);
  if ( distance1 < size1/2) { //mouse hover
    button1Color = color(255, 0, 0);
    if (mousePressed) {
      button1Color = color(random(255), random(255), random(255));
    }
  } else {
    button1Color = color(100);
  }
  float distance2 = dist(x2, y2, mouseX, mouseY);
  if ( distance2 < size2/2) { //mouse hover
    button2Color = color(255, 0, 0);
    if (mousePressed) {
      button2Color = color(random(255), random(255), random(255));
    }
  } else {
    button2Color = color(100);
  }
}