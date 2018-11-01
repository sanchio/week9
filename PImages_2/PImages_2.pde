// code 1 FA 18
// bryan ma

// this code starts setting up two arrays - 
// one to hold strings, another to hold PImages.

// set up the sketch so that the arrayOfImagePaths
// is set up to contain a collection of image filenames
// located in the sketch folder. make sure the arrayOfPImages 
// is also set up to contain the same number of items. 

// once the arrays are working, use the draw loop to display
// all the images by looping through the results of filling the
// arrayOfPImages. 
//String[] arrayOfImageFilenames = new String[5]
String[] arrayOfImageFilenames = {"donut1.png", "donut2.png", "donut3.png", "donut4.png", "donut5.png"};
PImage[] arrayOfPImages = new PImage[arrayOfImageFilenames.length];

void setup() {
  size(500,500);
  for (int i = 0; i < arrayOfImageFilenames.length; i++) {
    arrayOfPImages[i] = loadImage(arrayOfImageFilenames[i]);  
    arrayOfImageFilenames[i] = "donut" + i + ".png";
  }
}

void draw() {
  background(0);
  for (int i = 0; i < arrayOfPImages.length; i++) {
    float x = map(i, 0, arrayOfPImages.length - 1, 100, width - 200);
    image(arrayOfPImages[i], x, mouseX, 100, 100);
  
}
}
