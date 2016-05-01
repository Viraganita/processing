class Labda {
  float x;
  float y ;
  float z = random (0,500);
  
  
  void rajzold_ki () {
    noStroke();
    fill (000000);
    ellipse(x, y, 10, 10);
  }
  void menj (){
  x=x+1;
  y=y+1;
  }
  void fordulj (){
  x= x+z;
  y= y +z;
  }
  
  boolean bent_van() {
    
    if (x<500 && y<500 && x>0 && y>0) {
      return true;
    } else {
      return false;
    }
  }
 
}
  Labda fekete_labda=new Labda();
  
  void setup () {
    size (500, 500);

    fekete_labda.x=250;
    fekete_labda.y=250;
    

    
  }

  void draw() {
    background(#FAEAFF);
    fekete_labda.rajzold_ki();
   
    if (fekete_labda.bent_van()){
    fekete_labda.menj();
    }
    else {fekete_labda.fordulj();
    }
    


    
  }