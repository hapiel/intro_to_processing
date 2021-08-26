int squareSize = 40;
int gridSize = 10;

size(800, 800);
background(0);
blendMode(ADD);

int i = 0;
while ( i < 10) {
  i += 1;
  println(i);
  int j = 0;
  while (j < 10) {
    print(j + " ");
    j += 1;
    int posX = i * 70;
    int posY = j * 70;
    //float dist = random(20);
    float dist = 10;
    //float col = random(255);
    float col = 255;
    float sqSz = random(60);
    fill(col, 0, 0);
    rect(posX, posY, sqSz, sqSz);
    fill(0, col, 0);
    rect(posX + 10, posY + dist, sqSz, sqSz);
    fill(0, 0, col);
    rect(posX + 20, posY + dist * 2, sqSz, sqSz);
  }
  println();
}

save("img.png");
