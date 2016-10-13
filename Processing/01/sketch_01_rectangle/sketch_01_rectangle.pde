void setup()
{
  size(600, 400); // velikost okna do kterého budeme kreslit: size(šířka, výška)

  // rect() - příkaz pro vykreslení obdelníku
  // rect(pozice_x, pozice_y, šířka, výška);
  rect(150, 100, 300, 200);
  
  saveFrame("image/01.01-rectangle");
}