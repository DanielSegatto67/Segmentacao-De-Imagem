void setup(){
  size(74,83);
  noLoop();
}

void draw(){
  PImage img = loadImage("fish_003924076368_19201.jpg");
  PImage img2 = createImage(img.width, img.height, RGB);
  
  
  
  // Filtro de escala de cinza
  
  for(int y = 0; y < img.height; y++){
    for(int x = 0; x < img.width; x++){
      int pos = y*img.width + x;
      int media = (int) (green(img.pixels[pos]) + green(img.pixels[pos]) + blue(img.pixels[pos])) / 3;
      img2.pixels[pos] = color(media);
      
    }
  }

  // Filtro de brilho

  for(int y = 0; y < img.height; y++){
    for(int x = 0; x < img.width; x++){
      int pos = y*img.width + x;
      float brilho1 = (int) blue(img2.pixels[pos])*4;
      int brilho = (int) brilho1;
      if(brilho > 255) brilho = 255;
      else if(brilho < 0) brilho = 0;
      img2.pixels[pos] = color(brilho);
    }
  }
  

  // Filtro de Limiarização
  for(int y = 0; y < img.height; y++){
    for(int x = 0; x < img.width; x++){
      int pos = y*img.width + x;
      if(red(img2.pixels[pos]) >250 && x> 21 && x < 52 && y > 20 && y < 65)
        img2.pixels[pos] = color(255);
      else
        img2.pixels[pos] = color(0);
    }
  }

  image(img2,0,0);
  save("imagem1F.png"); // salva o que esta na janela, cuidado pois irá salvar por cima de outro arquivo com mesmo nome
  
  
  
}
