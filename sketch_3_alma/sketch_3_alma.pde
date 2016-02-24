PImage alma;
void setup () {
size (500,500);
alma=loadImage("apple_PNG2576.png");
}
void draw () {
  background (225,mouseX,mouseX);
  tint(0, 0, 204);
image (alma, mouseX, mouseY,mouseX,mouseY);
noTint();
}