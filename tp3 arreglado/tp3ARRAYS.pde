//Nicolas tossi com 3
//https://youtu.be/_9e1N2X79pg
// Explicacíon de arrays https://youtu.be/NFU60BRcXTA
PImage obraOriginal;
float granCirculoX, granCirculoY;
float granCirculoDiametro;
color colorCirculoGrande;
float[] circulosX = {0, 400, 60, 350, 200};
float[] circulosY = {400, 0, 60, 350, 90};
float[] circulosDiametro = {700, 700, 220, 250, 180};
int[] circulosAnillos = {30, 30, 12, 8, 10};

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

 
  for (int i = 0; i < circulosX.length; i++) {
    drawBullseye(circulosX[i], circulosY[i], circulosDiametro[i], circulosAnillos[i], color(0));
  }

  // --- DIBUJO DEL CÍRCULO MÓVIL (se mantiene separado) ---
  granCirculoX = constrain(mouseX - 400, 0, 400);
  granCirculoY = constrain(mouseY, 0, 400);
  granCirculoDiametro = calcularDiametro(granCirculoY);
  
  // Dibuja el círculo móvil usando el color que cambia con el clic.
  drawBullseye(granCirculoX, granCirculoY, granCirculoDiametro, 22, colorCirculoGrande);
  
  resetMatrix();
}
