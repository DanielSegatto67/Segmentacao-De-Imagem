void setup(){
  size(155,131);
  noLoop();
}

void draw(){
  PImage img = loadImage("fish_003568085517_27289.jpg");
  PImage aux = createImage(img.width, img.height, RGB);
  
  for(int y = 0; y < img.height; y++){
    for(int x = 0; x < img.width; x++){
      int pos = y*img.width+x;
      int media = 0, qtde = 0;
      
      if(y!= 0){
        int npos = (y-1)*img.width + x;
        media += red(img.pixels[npos]);
        qtde++;
      }
      
      if(y!=(img.height-1)){
        int npos = (y+1)*img.width+x;
        media += (int) red(img.pixels[npos]);
        qtde++;
      }
      if(x!=0){
        int npos = y*img.width + (x-1);
        media += (int) red(img.pixels[npos]);
        qtde++;
      }
      if (x!=(img.width-1)){
        int npos = y*img.width + (x+1);
        media += (int) red(img.pixels[npos]);
        qtde++;
      }
      media = (int) (media + red(img.pixels[pos])) / ++qtde;
      aux.pixels[pos] = color(media);
    }
  }
  image(aux, 0,0);
  save("imagemMedia.png");
}
