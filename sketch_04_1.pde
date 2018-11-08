//int maxImages = 3;
//int imageIndex = 0;
PImage botticelli;
PImage [] images = new PImage [4];

Pizza pizzza;
Ramen ramennn;

void setup() {

  size(800, 800); 
  background(220);
  String[] filenames = {"microsoft_paint.png", "pizza.png", "ramen.png"};
  for (int i = 0; i<filenames.length; i++) {
    images[i] = loadImage(filenames[i]);
  }

  botticelli = loadImage("botticelli.jpg");
  image (botticelli, 0, 300);

  pizzza = new Pizza (1, 1, 5, 1, 1, 2, 1);
  ramennn = new Ramen (0, 0, 5, 1, 10, 20, 25);
}


void draw() {
  loadPixels();


botticelliItaly();


 pizzza.move();
  pizzza.display();


  pushMatrix();
  blendMode(EXCLUSION);
  fill(255, 15, 233, 150);
  rect(250, 240,400,300);
  blendMode(BLEND);
  popMatrix();
 
  ramennn.move();
  ramennn.display();


  pushMatrix();
 
  scale(1.05);
  image(images[0], width/4, height/4);

  popMatrix();


}

void botticelliItaly (){
  
    botticelli.loadPixels();
  
  for (int y = 0; y <botticelli.height; y++) {
    int pan = int(random(-10, 15));
    for (int x = 0; x<botticelli.width; x++) {
      int loc = (pan+x)+y*width;
      color c = botticelli.get(x, y);

      if ( (x+pan)<width-1 && y<height-1 && (x+pan)>=0 && y>=0) {
        pixels [loc] = c-2 ;
      }
    }
  }
  updatePixels();

  //int x1 = (int) random(0, botticelli.width);
  //int y1 = (int) random(0, botticelli.height);

  //int x2 = round(x1 +random(-2, 2));
  //int y2 = round(y1 +random(-2, 2));



  //copy (x1, y1, botticelli.width, botticelli.height, x2, y2, botticelli.width, botticelli.height);
  
}
