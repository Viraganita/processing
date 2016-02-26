PImage alma;
float x;
float y;
float valtozo;
float sebx = 2.5;
float seby = 2.5;
void setup () {
  size (500, 500);
  alma=loadImage("apple_PNG2576.png");
  x=1;
  y=1;
  valtozo=2.5;
}
void draw () {
  background(225, 185, 75);

  image (alma, x, y, 50, 50);
  x=x+sebx;
  y=y+valtozo;
  image (alma, x, y, 50, 50);

  if (y>225) {
    valtozo=-2.5;
  }

  if (x>225) {
    sebx= -2.5;
  }

  if (x<225) {
    valtozo= 2.5;
  }
 if (y>225) {
    sebx= 2.5;
  }
  
  if (y>450) {
    valtozo= -0.5;
  }
 
  
}