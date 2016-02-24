PImage alma;
float x;
float y;
float valtozo;
float sebx = 1;
float seby = 1;
void setup () {
size (500,500);
alma=loadImage("apple_PNG2576.png");
x=1;
y=1;
valtozo=2.5;
}
void draw () {
  background (#9EC6C1);
  
image (alma, x, y,50,50);
x=x+sebx;
y=y+valtozo;
image (alma, x, y,50,50);

  if (y>300) {
  valtozo=-2.5;
  
 

  
  }
 
  
}