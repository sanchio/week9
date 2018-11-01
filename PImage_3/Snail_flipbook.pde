// code 1 FA 18
// bryan ma

// this code is adapted from the Processing example "Sequential" by James Paterson.
// this sketch loads in 12 separate images into an array of PImages, then plays
// them sequentially in the draw loop.
 
// i will explain the "%" operator in class.

// create your own image sequence. 
// then change the sketch to load in and display your image sequence.

// once you've done this, adapt the image sequence to be part of a class behavior.
// imagine the "Mario" object we've discussed in class - animating a character 
// like that could be done in this way - creating the class to contain an array 
// of images, and having the class's display method cycle through the frames.  

Snail snail;
//int numFrames = 6;  // The number of frames in the animation
//int currentFrame = 0;
//PImage[] images = new PImage[numFrames];
    
void setup() {
  size(600, 600);
  frameRate(6);
  imageMode(CENTER);
  snail = new Snail();
  
  
} 
 
void draw() { 
  background(255);
  
  snail.update();
  snail.display();
  
 }
 
 
 class Snail {
   float x,y;
   int numFrames;
   int currentFrame;
   PImage[] frames;
   
   Snail() {
     numFrames = 6;
     currentFrame = 0;
     frames = new PImage[numFrames];
      x = 0;
    y = 200;
    
    
     
  frames[0]  = loadImage("snail0.png");
  frames[1]  = loadImage("snail1.png"); 
  frames[2]  = loadImage("snail2.png");
  frames[3]  = loadImage("snail3.png"); 
  frames[4]  = loadImage("snail4.png");
  frames[5]  = loadImage("snail5.png");
     
   }
   
   
  void display() {
   
     image(frames[currentFrame], x, y, 400, 400);
  }
  
  
  void update() {
   
    currentFrame = (currentFrame+1) % numFrames;
    x+=5;
    
    if(x > width)
    x = 0;
  }
   
   

   
   
   
 }
