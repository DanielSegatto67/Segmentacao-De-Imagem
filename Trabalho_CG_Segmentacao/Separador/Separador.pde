void setup(){
  size(155,131);
  noLoop();
}

void draw(){
  //PImage img = loadImage("imagem1.jpg");
  //PImage img2 = loadImage("imagem1F.png");
//Resolução:74x83

  PImage img = loadImage("imagem2.jpg");
  PImage img2 = loadImage("imagem2F.png");
//Resolução: 95x86

  //PImage img = loadImage("imagem3.jpg");
  //PImage img2 = loadImage("imagem3F.png");
//Resolução:155x131

  //PImage img = loadImage("imagem4.jpg");
  //PImage img2 = loadImage("imagem4F.png");
//Resolução: 176x164

  //PImage img = loadImage("imagem5.jpg");
  //PImage img2 = loadImage("imagem5F.png");
//Resolução: 91x107

  
  for(int y = 0; y < img.height; y++){
    for(int x = 0; x < img.width; x++){
      int pos = y*img.width + x;
      
      if((red(img2.pixels[pos]))==0){
        img.pixels[pos] = color(green(0));
        img.pixels[pos] = color(red(0));
        img.pixels[pos] = color(blue(0));
      } 

    }
}

  image(img,0,0);
  save("x.png");
}
