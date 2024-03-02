int x = 0, y = 0, x1 = 10, y1 = 10;
String a = "TOCOU";
final int ESQUERDA = 0,  DIREITA = 1, CIMA = 2, BAIXO = 3, CENTRO = 4;
int estadoPlayer = 4;
PImage img1,star,sprite,ship,teste;

void setup(){
  size(800,600);
  frameRate(30);
  textAlign(CENTER,TOP);

  img1 = loadImage("sprite.png");
  star = loadImage("star.png");
  ship = loadImage("assaultship.png");
  teste = loadImage("shinestar.png");

}

void draw(){
      background(0);  
      stars();
      quadrado();
      circulo();
      obstaculo();

      if (x > 770){
        x = 770;
      }
      if(x<30){
        x = 30;
      }
      if (y > 569){
        y = 570;
      }
        if (y<20){
          y =  20;
      }
      if ((x >=180 && x<= 280) && (y >=380 && y <= 420)){
        
        image(teste,300,200);
      }
      if ((x >=480 && x<= 580) && (y >=380 && y <= 420)){
        
        image(teste,300,200);
      }
}

void quadrado(){
  fill(0,0,0,0);  
  rect(x,y,20,20);
  image(img1,x,y-3,20,30);
}
void stars(){
      image(star,60,30,30,30);
      image(star,160,70,30,30);
      image(star,270,50,30,30);
      image(star,380,40,30,30);
      image(star,480,90,30,30);
      image(star,580,60,30,30);
      image(star,700,60,30,30);
      ////////////////////////
      image(star,60,130,30,30);
      image(star,160,170,30,30);
      image(star,270,150,30,30);
      image(star,380,140,30,30);
      image(star,480,190,30,30);
      image(star,580,160,30,30);
      image(star,700,180,30,30);
      ////////////////////////
      image(star,60,230,30,30);
      image(star,160,270,30,30);
      image(star,270,250,30,30);
      image(star,380,240,30,30);
      image(star,480,290,30,30);
      image(star,580,260,30,30);
      image(star,700,280,30,30);
      //////////////////////////
      image(star,60,330,30,30);
      image(star,160,370,30,30);
      image(star,270,350,30,30);
      image(star,380,340,30,30);
      image(star,480,380,30,30);
      image(star,580,360,30,30);
      image(star,700,380,30,30);
      /////////////////////////
      image(star,60,430,30,30);
      image(star,160,470,30,30);
      image(star,270,450,30,30);
      image(star,380,440,30,30);
      image(star,480,490,30,30);
      image(star,580,460,30,30);
      image(star,700,480,30,30);
      /////////////////////////
      image(star,60,530,30,30);
      image(star,160,570,30,30);
      image(star,270,550,30,30);
      image(star,380,540,30,30);
      image(star,480,590,30,30);
      image(star,580,560,30,30);
      image(star,700,580,30,30);

}
void circulo(){
      fill(200,50,50);
      if (estadoPlayer == CIMA){
      circle(x+x1,y,5);
      }
      if (estadoPlayer == BAIXO){
      circle(x+x1,y+y1+y1,5);
      }
      if (estadoPlayer == DIREITA){
      circle(x+x1+x1,y+y1,5);
      }
      if (estadoPlayer == ESQUERDA){
      circle(x,y+y1,5);
      }
      if (estadoPlayer == CENTRO){
      circle(x+x1,y+y1,5);
      }
      
}


void obstaculo(){
      image(ship,200,400,86,33);   
      image(ship,500,400,86,33);   

      
      noStroke();
      
      fill(0,0,0,0);
      rect(200,400,80,20);
      rect(500,400,80,20);

}


void keyPressed(){
    //INVALIDA TECLAS QUE NÃO SEJAM AS DE MOVIMENTAÇÃO E CENTRALIZA O OLHINHO
    if (key == 'b') {
      estadoPlayer = CENTRO;
    } else {
      estadoPlayer = CENTRO;
    }
  
    //MOVIMENTAÇÃO
    if(key == CODED){
      if(keyCode == UP){
      estadoPlayer = CIMA;
      y = y-10;
      }else if(keyCode == DOWN){
      estadoPlayer = BAIXO;
      y = y+10;
      }else if(keyCode == LEFT){
      estadoPlayer = ESQUERDA;
      x= x-10;
      }else if(keyCode == RIGHT){
       estadoPlayer = DIREITA;
      x = x+10;
      }
      

}
}
