class Csillag {
  float x=0;
  float y=0;
  float r=0;

  void ragyogj() {
    fill(#F7F7A2);
    noStroke();
    ellipse(x, y, r, r);
  }

  void szuless() {
    x=random(0, width);
    y=random(0, height);
    r=random(1, 5);
  }
}
class Felho {
  float x ;
  float y ;
  float r;
  void legyel () {
    fill ( #FFFFFF);
    noStroke();
    ellipse (x, y, r, r);
    fill (#FFFFFF);
    noStroke();
    ellipse (x+80, y, r, r);
    fill (#FFFFFF);
    noStroke();
    ellipse (x+40, y+25, r, r);
    fill (#FFFFFF);
    noStroke();
    ellipse (x+40, y-25, r, r);
  }

  void ussz() {
    x=x+0.3;
  }

  void hely () {
    x =random(0, 450);
    y=random (0, 450);
    ;
    r=60;
  }
}

class Hold {
  float x;
  float y;
  float r;

  void vilagits() {
    fill(#F7F7A2);
    noStroke();
    ellipse(x, y, r*2, r*2);
    fill(#2C2AB7);
    ellipse(x+r*0.7, y-r*0.7, 2*r, 2*r);
  }

  void mozogj() {
    x=x+0.5;
  }
}



Csillag[] csillagok= new Csillag[1000];
Hold hold=new Hold();
Felho[] felho=new Felho[4];

void setup() {
  size(500, 500);

  int i= 0; 
  while (i<1000) {
    csillagok[i]=new Csillag();
    csillagok[i].szuless();
    i=i+1;

    int v =0;
    while (v<4) {
      felho [v]= new Felho();
      felho[v].hely();
      v=v+1;
    }
  }
  hold.x=50;
  hold.y=75;
  hold.r=40;
}

void draw() {
  background(#2C2AB7);

  hold.vilagits();
  hold.mozogj();


  int i= 0; 
  while (i<1000) {
    csillagok[i].ragyogj();
    i=i+1;
  }

  //int v= 0; 
//  while (v<4) {
  //  felho[v].legyel();
   // felho[v].ussz();
    //v=v+1;
  //}

  for (int j=0; j<4; j++){
    felho[j].legyel();
    felho[j].ussz();
  }
}