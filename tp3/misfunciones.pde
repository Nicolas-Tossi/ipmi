
void drawBullseye(float x, float y, float maxDiameter, int numRings, color baseColor) {
  for (int i = numRings; i > 0; i--) {
    if ((numRings - i) % 2 == 0) {
      fill(baseColor);
    } else {
      fill(255);
    }
    float currentDiameter = maxDiameter * ((float)i / numRings);
    ellipse(x, y, currentDiameter, currentDiameter);
  }
}

float calcularDiametro(float posY) {
  float diametro = map(posY, 0, height, 50, 380); // Mapea la pos Y al diámetro
  return diametro;
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    reiniciar();
  }
}

void mousePressed() {
  colorCirculoGrande = color(random(255), random(255), random(255));
}

void reiniciar() {
  granCirculoX = 200;
  granCirculoY = 200;
  colorCirculoGrande = color(0);
}
