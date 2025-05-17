PImage Obra, Jonas, Lugar;
int estado;
int contador;
String texto1, texto2, texto3;
PFont fuente;

float posY, posX;
int agrandar;

void setup() {
  size(640, 480);
  estado = 1;
  contador = 0;
  
  posY = 50;
  posX = 50;

  agrandar = 255;
  
//NOMBRES A LAS IMÁGENES  
  Obra = loadImage("Obra.jpg");
  Jonas = loadImage("Jonas.jpg");
  Lugar = loadImage("lugarpixels.jpg");

//LOS TEXTOS
  texto1 = "Nombre de la obra: \nPixels (2011)";
  texto2 = "Creada por: \nJonas Vorwerk";
  texto3 = "Esta fue hecha en el hotel Mozaique \nen Países Bajos. \nEsta fue una instalación interactiva designada \na poder jugar con un set de bloques que permiten \ncrear entornos dinámicos controlados por el público \nmás que el artista.";
 
  
  fuente = loadFont("Georgia-17.vlw");
}


void draw() {
  textFont(fuente);
  fill(255);
  textAlign(LEFT);
  contador=contador+1;
  
  if(contador==120){
  estado++;
  contador=0;
  }

//pantalla 1
  if(estado==1){
    image(Obra, 0, 0, width, height);
    text(texto1, posX, posY);
  }

//transición 1
  else if(estado==2){
    image(Obra, 0, 0, width, height);
    text(texto1, posX, posY);
    posY = posY+4;
    
}

//pantalla 2
  else if (estado==3) {
    posX = 50;
    posY = 440;
    image(Jonas, 0, 0, width, height);
    text(texto2, posX, posY);
   
  }

//transición 2
  else if(estado==4){
  image(Jonas, 0, 0, width, height);
  text(texto2, posX, posY);
  posX = posX+4;
  posY = posY-4;
  }

//pantalla 3 y transición
  else if (estado==5) {
    posX = 10;
    posY = 65;
    textSize(map(agrandar, 0, 255, 0, 17));
    agrandar = agrandar+1;
    image(Lugar, 0, 0, width, height); 
    text(texto3, posX, posY);
}


//BOTÓN REINICIAR
else if(estado>=6){
  
    if(mouseX>130 && mouseX<130+100 && mouseY>400 && mouseY<400+50){
      fill(86, 139, 74);
      
    }
     rect(130, 400, 100, 50);
  fill(0);
  textAlign(CENTER, CENTER);
  text("REINICIAR", 180, 425);
}
}

void mousePressed(){
  if(estado>=6){
    if(mouseX>130 && mouseX<130+100 && mouseY>400 && mouseY<400+50){
      estado=1;
      contador=0;
      posX = 50;
      posY = 50;
      agrandar = 255; 
  }
  }
}
