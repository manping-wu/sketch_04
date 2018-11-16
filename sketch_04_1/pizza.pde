class Pizza {
  
  //local variables
  float x, y, bigC, littleC, max, radSec, speed;
    
  //pizza constructor 
   Pizza ( float xTemp, float yTemp, float bigCTemp, float littleCTemp, float maxTemp, 
   float radSecTemp, float speedTemp){
    
     
  //local variables - temp variables    
     x=xTemp;
     y=yTemp;
     bigC=bigCTemp;
     littleC=littleCTemp;
     max=maxTemp;
     radSec=radSecTemp;
     speed=speedTemp;
     
     
   }
   
  //display
  void display(){
    
     pushMatrix(); //matrix pt1
       scale(0.8); //scale 
       PImage slice; //image variable
       slice = loadImage("pizza.png"); //load variable
       translate(700,800); //where to place
       rotate(radians(-radSec)); //rotate
       
       float pizzaX = -slice.width/2; //X variable
       float pizzaY = -slice.height/2; //Y variable
       
       image (slice,pizzaX+120, pizzaY+200); //Place the image
      popMatrix(); //matrix pt2
   }
 
 //animation
 void move(){
   radSec = radSec+speed; //movement of the pizza
 }
 
}
