import controlP5.*;

ControlFrame cf;

int squareSizeMin = 0;
float squareSizeRandom = 40;
int gridSize = 10;
int myBlendMode = 2;
int distanceMin = 10;
float distanceRandom = 0;
int colorMin = 255;
float colorRandom = 0;
int border = 50;
int bgCol = 0;

int strokeWMin = 3;
float strokeWRandom = 0;
int alph = 255;

float rainbow = 0;

void settings(){
  size(800, 800);
}

void setup() {

  cf = new ControlFrame(this, 400, 800, "Controls");
  surface.setLocation(420, 10);
}

void draw() {
    
  randomSeed(0);
  
  
  float totalDist = (distanceMin + distanceRandom);
  background(bgCol);
  blendMode(myBlendMode);
  

  int i = 0;
  while ( i < gridSize) {
    
    int j = 0;
    while (j < gridSize) {
    
      strokeWeight(strokeWMin + random(strokeWRandom));
      float posX = border + (i * (width  - (border * 2 ) - totalDist)/gridSize);
      float posY = border + (j * (height - (border * 2 ) - totalDist)/gridSize);
      float dist = distanceMin + random(distanceRandom);
      float col = colorMin + random(colorRandom);
      float sqSz = squareSizeMin + random(squareSizeRandom);
      fill(col, 0, 0, alph);
      rect(posX + rainbow * cos(millis() / 100 * rainbow) * 4, posY, sqSz, sqSz);
      fill(0, col, 0, alph);
      rect(posX + dist, posY + dist + rainbow * sin(millis() / 100 * rainbow) * 5, sqSz, sqSz);
      fill(0, 0, col, alph);
      rect(posX + rainbow * cos(millis() / 100 * rainbow + PI) * 4 * 2, posY + dist * 2, sqSz, sqSz);
      j += 1;
    }
    i += 1;
  }
}

//void mouseClicked(){
//  save("img.png");
//}
