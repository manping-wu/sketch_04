//-----> Global Variable

//Image Variable
PImage botticelli; //image variable
PImage [] images = new PImage [4]; //image arrays

Pizza pizzza;
Ramen ramennn;

//Text variable
String [] r; //string variable for text
//String [] lines;
PFont f; //setting up variable for fonts


//-----> Setup
void setup() {
  frameRate(30); //set framerate

  size(800, 800); //size of the canvas
  background(245); //background color
  
  //----images setup
 
  //loading the filenames from data folder into an array and run one time
  //for loop the files from the arrays and load them
  String[] filenames = {"microsoft_paint.png", "pizza.png", "ramen.png"};
  for (int i = 0; i<filenames.length; i++) {
    images[i] = loadImage(filenames[i]);
  } 

  //load the botticelli file
  botticelli = loadImage("botticelli.jpg");

  //class constructor 
  pizzza = new Pizza (1, 1, 5, 1, 1, 2, 1);
  ramennn = new Ramen (0, 0, 5, 1, 10, 20, 25);
  

   //----text setup
   
   //See what fonts are available
  //String[] fontList = PFont.list(); 
  //printArray(fontList);
  
  //load the text data into the variable
    r=loadStrings("data/ramenhistory.txt");
    printArray(r); // print the text into arrays
  f = createFont ("Roboto-Regular", 16); //load the font into the variable
  textFont(f); //set the variable into the text font
  
  
 
  
}

//-----> Draw
void draw() {
  
  //----images draw
  
  
  loadPixels(); //load the pixels for botticelli
  botticelliItaly(); //custom botticelli function
  
   
  
  ramennn.move(); //ramen class move
  ramennn.display(); //ramen class display
  
  pizzza.move(); //pizza class move
  pizzza.display(); //pizza class display

  windowsPaint();// custom windows paint function
 

  
 //----text draw
 
 //loop the text file 
  for(int i=0;i<r.length;i++){
    
    float r2= map(mouseX, 0,width, 255,40); 
    //r2 variable is map by the mouse between the width and the color
    float b= map(mouseY, 0,height, 160,255); 
    //g variable is map by the mouse between the height and the color
   
      textMode(CENTER); //text is centered
     
    fill(r2,200,b); //fill is placed with the local variable
    textSize(random(10,20)); //the text changes between 10 and 20
    text(r[i],width/3.,(i*20)+100); // text display by the for loop and the position
    
  }
}


//----->Custom Functions

//Botticelli Function
void botticelliItaly (){
  
  //load the pixels from the botticelli image
    botticelli.loadPixels();
  
  //loop the botticelli y by the height
  for (int y = 0; y <botticelli.height; y++) {
    int pan = int(random(-3, 3)); //glitch set up being random between -3 and 3
   //loop the botticelli x by the width
    for (int x = 0; x<botticelli.width; x++) {
      
      // color variable gets from the botticelli image pixels based on x and y
      color c = botticelli.get(x, y);

     
      int pany = 100; // pan location y variable
      int loc = (pan+(x))+(pany+y)*width; //move the location based on the x and y
      if ( (x+pan)<width-1 && y<height-1 && (x+pan)>=0 && y>=0) {
        //if x is less the the width, and y is less than the height and x and y is bigger and equal to zero
        
        pixels [loc] = c+400 ; //pixel location with the c variable 
        
      }
    }
  }
  updatePixels(); //update the pixels

  //int x1 = (int) random(0, botticelli.width);
  //int y1 = (int) random(0, botticelli.height);

  //int x2 = round(x1 +random(-2, 2));
  //int y2 = round(y1 +random(-2, 2));

  //copy (x1, y1, botticelli.width, botticelli.height, x2, y2, botticelli.width, botticelli.height);
  
}


void windowsPaint (){
  
  //window's paint
  pushMatrix(); //set up the matrix pt 1
  
    translate(mouseX-images[0].width,mouseY-images[0].height); 
    // the translation of the image will move dependendent on the mouse
    
  pushMatrix(); //matrix pt 1
    
    blendMode(EXCLUSION); //set the blend mode
    fill(255, 15, 233, 150); //fill of the rect
    rect(250, 240,500,450); //rect draw
    blendMode(BLEND); // default blend mode
    popMatrix(); //matrix pt 2
    
    pushMatrix(); //matrix pt 1
   
    scale(1.2); //scale of the image
    alpha(5); //set the alpha
    image(images[0], width/4, height/4); //image window set up and display
  
    popMatrix(); //matrix pt 2
  popMatrix(); //matrix pt 2
  
}
