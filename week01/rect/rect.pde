int buttonColor=255;
int bx=250;
int by=250;
int w=50;
int h=50;
void setup(){
  background(0);
  size(600, 600); 
  noFill(); 
  strokeWeight(1); 
  stroke(255); 
}
  void draw(){
fill(buttonColor);
rect(bx,by,w,h);
if (mouseX > bx && mouseX < bx+w &&
    mouseY > by && mouseY < by+h) {
    buttonColor = color(255, 0, 0);
  } else {
    buttonColor = color(100);
  }
// click
if (mouseX > bx && mouseX < bx+w &&
    mouseY > by && mouseY < by+h) {//hover
    buttonColor = color(255, 0, 0);
    if(mousePressed){//click
         buttonColor = color(random(255), random(255), random(255));
    }
  } else {
    buttonColor = color(100);
  }
  }