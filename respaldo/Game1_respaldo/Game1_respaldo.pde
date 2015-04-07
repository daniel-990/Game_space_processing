int tamano_cuadros = 20;
int tamano_disparo = 15;
int numCuadros = int(random(5,15));
int velY2 = 5;

float [] posX = new float [numCuadros];
float [] posY = new float [numCuadros];
float [] velX = new float [numCuadros];
float [] velY = new float [numCuadros];
color relleno_disparos = color (random(255),random(255),random(255));
int relleno = relleno_disparos;

void setup(){
  size(500,600);
  
 for(int i=0; i<numCuadros; i++){
  
    posX[i] = width/2;
    posY[i] = height/2;
    velX[i] = random(1,2);
    velY[i] = random(1,2);
  }
}


void draw(){
  background(90,90,90);
  triangulo(mouseX-55,mouseY-55);
  cuadro(0,0);
  disparos(0,0);
 for(int i=0; i<numCuadros; i++){
  
 posY[i] = posY[i] + velY2;
 posX[i] += velX[i];
    if(posY[i] > 600){
      posY[i] = -100;
      posY[i] = int(randomGaussian() * 100);

    }
    
   if((posX[i]<0)||(posX[i]>width)){
      velX[i] = -velX[i];
    }

  }  
}

void cuadro(int x, int y)
{
  for(int i=0; i<numCuadros; i++){
      noFill();
      strokeWeight(5);
      rect(posX[i],posY[i],tamano_cuadros,tamano_cuadros);
  }
}

void triangulo(int x, int y)
{
 fill(38,178,170);
 smooth();
 strokeWeight(5);
 stroke(255);
 triangle(x+30, y+75, x+58, y+40, x+86, y+75); 
}

void disparos (int x, int y)
{
 fill(38,178,170);
 smooth();
 strokeWeight(5);
 stroke(255);
 ellipse(x+30, y+75,tamano_disparo,tamano_disparo); 
}


