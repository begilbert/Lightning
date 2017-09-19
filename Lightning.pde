PImage img;
int startX = 90;
int startY = 130;
int endX = 90;
int endY = 130;
void setup() {
  size(300,200);
  strokeWeight(4);
  background(0);
  img = loadImage("hand.png");
  image(img, 0, -100, width, height * 1.5);
}
void draw() {
  stroke((int)(Math.random() * 225), (int)(Math.random() * 225), (int)(Math.random() * 225));
  while (endX < 300) {
    endX = startX + (int)(Math.random() * 10);
    endY = startY + (int)((Math.random() * 20) - 10);
    line(startY, startX, endY, endX);
    startX = endX;
    startY = endY;
  }
}
void mousePressed() {
  startX = 90;
  startY = 130;
  endX = 90;
  endY = 130;
}
