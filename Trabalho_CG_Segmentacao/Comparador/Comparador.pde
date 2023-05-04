void setup(){
  size(364,107);
  noLoop();

}
void draw()
{
  PImage img = loadImage("fish_000006019596_03834.jpg");
  PImage img2 = loadImage("imagem5.png");
  PImage img3 = loadImage("imagem5F.png");
  PImage img4 = loadImage("imagemRecortada5.png");
  
  image(img,0,0);
  stroke(255);
  strokeWeight(2);
  line(91,0,91,107);
  image(img2,91,0);
  stroke(255);
  strokeWeight(2);
  line(182,0,182,107);
  image(img3,182,0);
  line(273,0,273,107);
  image(img4,273,0);
  save("Comparação5.png");
}
