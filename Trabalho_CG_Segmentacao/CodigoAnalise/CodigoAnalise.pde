void setup(){
  size(220,600);
  noLoop();

}

void draw(){
  int contador = 0;
  int contadorMask = 0;
  int contadorFP = 0;
  int contadorFN = 0;
  
  float porAcer = 0.0;
  float porFp = 0.0;
  float porFn = 0.0;
  
  //PImage img = loadImage("imagem1.png");
  //PImage img2 = loadImage("imagem1F.png");
  
  //PImage img = loadImage("imagem2.png");
  //PImage img2 = loadImage("imagem2F.png");
  
  //PImage img = loadImage("imagem3.png");
  //PImage img2 = loadImage("imagem3F.png");
  
  //PImage img = loadImage("imagem4.png");
  //PImage img2 = loadImage("imagem4F.png");
  
  PImage img = loadImage("imagem5.png");
  PImage img2 = loadImage("imagem5F.png");


  for(int y = 0; y < img.height; y++){
    for(int x = 0; x < img.width; x++){
      int pos = y*img.width + x;
      
      if( red(img.pixels[pos]) == 255 && red(img2.pixels[pos]) == 255 || red(img.pixels[pos]) == 0 && red(img2.pixels[pos]) == 0 ){
        contadorMask++;
      }
      
      if((red(img2.pixels[pos]))==255 && (red(img.pixels[pos]))<50){
        contadorFP++;
      }
      
      if((red(img2.pixels[pos]))<50 && (red(img.pixels[pos]))==255){
        contadorFN++;
      }
       
    }
  }
  
  porAcer = float(contadorMask*100)/(img.width*img.height);
  porFp = float(contadorFP*100)/(img.width*img.height);
  porFn = float(contadorFN*100)/(img.width*img.height);
  
   println("Quantidade de pixels detectado pelo programa:",img.width*img.height);
   println("Quantidade de pixels detectado pelo DataBase:",contadorMask);
   println("Quantidade de Falso Positivo:",contadorFP);
   println("Quantidade de Falso Negativo:",contadorFN);
   
   println("Porcentagem de acerto:",porAcer);
   println("Porcentagem de Falso Positivo:",porFp);
   println("Porcentagem de Falso Negativo:",porFn);
 
}
