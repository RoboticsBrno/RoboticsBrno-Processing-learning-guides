void setup()
{
  size(1200, 800); // velikost okna do kterého budeme kreslit: size(šířka, výška)

  // rect() - příkaz pro vykreslení obdelníku
  // rect(poziceX, poziceY, šířka, výška);

  int zakladniRozmerX = 1200;
  int zakladniRozmerY = (zakladniRozmerX/3)*2;

  int poziceX = zakladniRozmerX/4;
  int poziceY = zakladniRozmerX/6;
  int sirka = zakladniRozmerX/2;
  int vyska = zakladniRozmerX/3;
  
  rect(poziceX, poziceY, sirka, vyska);
  
  //drawArrow("x: 0  y: 0", 0, 0, 150, 45, true);
  ////drawText("x: 0  y: 0", 50, 20);
  
  //drawDimension("šířka okna: " + str(zakladniRozmerX), 0, zakladniRozmerY - zakladniRozmerY/10, zakladniRozmerX, 0);
  //drawDimension("výška okna: " + str(zakladniRozmerY), zakladniRozmerX - zakladniRozmerX/10, 0, zakladniRozmerY, 90);
    
  //drawDimension("poziceX: " + str(poziceX), 0, poziceY, poziceX, 0);
  //drawDimension("poziceY: " + str(poziceY), poziceX, 0, poziceY, 90);
  //drawDimension("šířka: " + str(sirka), poziceX, poziceY + vyska, sirka, 0);
  //drawDimension("výška: " + str(vyska), poziceX + sirka, poziceY, vyska, 90);
   
  saveFrame("image/01.01-rectangle.png");
}

//void drawDimension(String str, int cx, int cy, int len){
//  drawDimension(str, cx, cy, len, 0);
//}

void drawText(String str, int x, int y)
{
  fill(0);
  textSize(20);
  textAlign(CENTER);
  text(str, x, y);
  fill(255);
}

void drawArrow(String str, int cx, int cy, int len, float angle)
{
  drawArrow(str, cx, cy, len, angle, false);
}
  
void drawArrow(String str, int cx, int cy, int len, float angle, boolean oppositeArrow){
  pushMatrix();
  translate(cx, cy);
  rotate(radians(angle));
  line(0,0,len, 0);
  if(oppositeArrow)
  {
    line(0, 0, 8, -8);
    line(0, 0, 8, 8);
  }
  else
  {
    line(len, 0, len - 8, -8);
    line(len, 0, len - 8, 8);
  }
  drawText(str, len/2, -5);
  popMatrix();
}

void drawDimension(String str, int cx, int cy, int len, float angle)
{
  pushMatrix();
  translate(cx, cy);
  rotate(radians(angle));
  line(0, 0, len, 0);
  line(len, 0, len - 8, -8);
  line(len, 0, len - 8, 8);
  line(0, 0, 8, -8);
  line(0, 0, 8, 8);
  drawText(str, len/2, -5);
  popMatrix();
}