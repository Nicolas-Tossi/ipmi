//Nicolas tossi com 3
//https://youtu.be/_9e1N2X79pg
PImage obraOriginal;
float granCirculoX, granCirculoY;
float granCirculoDiametro;
color colorCirculoGrande;

void setup() {
  size(800, 400);
  obraOriginal = loadImage("image.jpg");
  reiniciar();
}

void draw() {
  // --- LADO IZQUIERDO (ESTÁTICO) ---
  background(200);
  image(obraOriginal, 0, 0, 400, 400);
  
  // --- LADO DERECHO (INTERACTIVO) ---
  translate(400, 0);
  clip(0, 0, 400, 400);
  
  float distancia = dist(granCirculoX, granCirculoY, 60, 60);
  
  if (distancia < 100) {
    background(220); 
  } else {
    background(255);
  }
 

  granCirculoX = constrain(mouseX - 400, 0, 400);
  granCirculoY = constrain(mouseY, 0, 400);
  
  granCirculoDiametro = calcularDiametro(granCirculoY);

  // --- DIBUJO DE LOS CÍRCULOS ---
  color colorNegro = color(0);
  drawBullseye(0, 400, 700, 30, colorNegro);
  drawBullseye(400, 0, 700, 30, colorNegro);
  drawBullseye(60, 60, 220, 12, colorNegro);
  drawBullseye(350, 350, 250, 8, colorNegro);
  drawBullseye(200, 90, 180, 10, colorNegro);
  
  // Dibuja el círculo móvil
  drawBullseye(granCirculoX, granCirculoY, granCirculoDiametro, 22, colorCirculoGrande);
  
 
}
