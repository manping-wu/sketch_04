class Ramen extends Pizza {
  

    
   Ramen ( float xTemp, float yTemp, float bigCTemp, float littleCTemp, float maxTemp, 
   float radSecTemp, float speedTemp){
    
  super (xTemp, yTemp, bigCTemp, littleCTemp, maxTemp, radSecTemp, speedTemp);
   }
  
  void display(){
    
     pushMatrix();
       scale(1);
       PImage slice;
       slice = loadImage("ramen.png");
       translate(650,530);
       rotate(radians(-radSec));
       image (slice,-slice.width/2,-slice.height/2);
      popMatrix();
    
  }
  

  
}
