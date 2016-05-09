//PImage[][] racs = new PImage[5][6];
//String sorbetuk = "abcde";
//for (int sor = 0; sor < 5; sor++) {

//for (int oszlop = 0; oszlop < 6; oszlop++) {
// racs[sor][oszlop] = loadImage sorbetuk.charAt(sor) + Integer.toPImage(oszlop + 1) + ".jpg";
//   println(racs[sor][oszlop]);
//}
//}

PImage[][]racs = new PImage [5][6];
int lyuk= 5;
int lyuk2=6;

void setup () {
  size (900, 900);

  racs[0][0] = loadImage("a1.jpg");
  racs[0][1] = loadImage("a2.jpg");
  racs[0][2] = loadImage("a3.jpg");
  racs[0][3] = loadImage("a4.jpg");
  racs[0][4] = loadImage("a5.jpg");
  racs[0][5] = loadImage ("a6.jpg");
  racs[1][0]= loadImage ("b1.jpg");
  racs[1][1]= loadImage ("b2.jpg");
  racs[1][2]= loadImage ("b3.jpg");
  racs[1][3]= loadImage ("b4.jpg");
  racs[1][4]= loadImage ("b5.jpg");
  racs[1][5]= loadImage ("b6.jpg");
  racs[2][0]=loadImage ("c1.jpg");
  racs[2][1]=loadImage ("c2.jpg");
  racs[2][2]=loadImage ("c3.jpg");
  racs[2][3]=loadImage ("c4.jpg");
  racs[2][4]=loadImage ("c5.jpg");
  racs[2][5]=loadImage ("c6.jpg");
  racs[3][0]=loadImage("d1.jpg");
  racs[3][1]=loadImage("d2.jpg");
  racs[3][2]=loadImage("d3.jpg");
  racs[3][3]=loadImage("d4.jpg");
  racs[3][4]=loadImage("d5.jpg");
  racs[3][5]=loadImage("d6.jpg");
  racs[4][0]=loadImage("e1.jpg");
  racs[4][1]=loadImage("e2.jpg");
  racs[4][2]=loadImage("e3.jpg");
  racs[4][3]=loadImage("e4.jpg");
  racs[4][4]=loadImage("e5.jpg");
  racs[4][5]=loadImage("lyuk2.jpg");
}
void balra () {
  if (lyuk>0) {
    lyuk--;
    racs[4][lyuk+1]=racs[0][lyuk];
    racs[4][lyuk]=loadImage("lyuk2.jpg");
  }
}
void jobbra () {
  if (lyuk<5) {
    lyuk ++;
    racs[4][lyuk-1]= racs[0][lyuk];
    racs[4][lyuk]= loadImage("lyuk2.jpg");
  }
}
void le (){
if (lyuk2<6){
lyuk++;
racs[lyuk2-1][5]=racs[lyuk2][0];
racs [lyuk2][5]=loadImage("lyuk2.jpg");

}
}
void fel (){
if (lyuk2>0){
  lyuk--;
  racs[lyuk2+1][5]=racs[lyuk2][0];
  racs[lyuk2][5]=loadImage("lyuk2.jpg");
}
}
void draw () {

  
  for(int sor=0;sor<5;sor++){
    
  for(int oszlop=0;oszlop<6; oszlop++){
   image (racs[sor][oszlop],150*oszlop,150*sor);
  }
  }
}
void keyPressed() {
  if (key==CODED) {
    if (keyCode==RIGHT) {
      balra();
    }
  }
  if (keyCode==LEFT) {
    jobbra();
  }
  if (key==UP){
  le();
  }
  if (key==DOWN){
  fel();
  }
}