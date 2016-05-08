//PImage[][] racs = new PImage[5][6];
//String sorbetuk = "abcde";
//for (int sor = 0; sor < 5; sor++) {

//for (int oszlop = 0; oszlop < 6; oszlop++) {
// racs[sor][oszlop] = loadImage sorbetuk.charAt(sor) + Integer.toPImage(oszlop + 1) + ".jpg";
//   println(racs[sor][oszlop]);
//}
//}

PImage[] sor = new PImage [6];
int lyuk= 5;

void setup () {
  size (900, 150);

  sor[0] = loadImage("a1.jpg");
  sor[1] = loadImage("a2.jpg");
  sor[2] = loadImage("a3.jpg");
  sor[3] = loadImage("a4.jpg");
  sor[4] = loadImage("a5.jpg");
  sor[5] = loadImage ("lyuk2.jpg");
}
void balra () {
  if (lyuk>0) {
    lyuk--;
    sor[lyuk+1]=sor[lyuk];
    sor[lyuk]=loadImage("lyuk2.jpg");
  }
}
void jobbra () {
if (lyuk<5) {
lyuk ++;
sor[lyuk-1]= sor[lyuk];
sor[lyuk]= loadImage("lyuk2.jpg");
}
}

void draw () {

  for (int kep=0; kep <6; kep++) {
    image (sor[kep], 150*kep, 0);
  }
}
void keyPressed() {
  if(key==CODED){
  if (keyCode==RIGHT){
  balra();
  }
  }
if (keyCode==LEFT){
jobbra();
}
}