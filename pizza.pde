class Pizza {
  
  float x, y, bigC, littleC, max, radSec, speed;
    
   Pizza ( float xTemp, float yTemp, float bigCTemp, float littleCTemp, float maxTemp, 
   float radSecTemp, float speedTemp){
    
     x=xTemp;
     y=yTemp;
     bigC=bigCTemp;
     littleC=littleCTemp;
     max=maxTemp;
     radSec=radSecTemp;
     speed=speedTemp;
     
     
   }
   
  void display(){
     pushMatrix();
       scale(0.8);
       PImage slice;
       slice = loadImage("pizza.png");
       translate(250,250);
       rotate(radians(radSec));
       image (slice,-slice.width/2,-slice.height/2);
      popMatrix();
   }
 
 void move(){
   radSec = radSec+speed;
 }
 
}
