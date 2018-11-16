class Ramen extends Pizza {
  
//inhertiance of the pizza class
  
  //ramen constructor
   Ramen ( float xTemp, float yTemp, float bigCTemp, float littleCTemp, float maxTemp, 
   float radSecTemp, float speedTemp){
    
  //super the variables by reference the pizza class   
  super (xTemp, yTemp, bigCTemp, littleCTemp, maxTemp, radSecTemp, speedTemp);
   }
  
  //display
  void display(){
    
     pushMatrix(); //matrix pt1
       scale(1); //scale
       PImage slice; //image variable
       slice = loadImage("ramen.png"); //load image
       translate(250,250); //move the origin of the image
       
       image (slice,-slice.width/2,-slice.height/2); //place image
       
       
  slice.loadPixels(); //load the image pixels
  
  //load the pixels for the y based on the height
  for (int y = 0; y <slice.height; y++) {
    // glitch effect on the pixels
    int pan = int(random(-10, 5));
    //load the pixels for the x based on the width
    for (int x = 0; x<slice.width; x++) {
      int loc = (pan+x)+y*width; //location of the pixels 
      color c = slice.get(x, y); //effects of the image's color
      
      if ( (x+pan)<width-1 && y<height-1 && (x+pan)>=0 && y>=0 && alpha(c)!=0) {
        //if x is less the the width, and y is less than the height and x and y is bigger and equal to zero
        
        pixels [loc] = c+100 ; //pixel location with the c variable 
      }
    }
  }
  updatePixels(); //update the pixels
       
      popMatrix(); //matrix pt 2

  }
  
 
}
