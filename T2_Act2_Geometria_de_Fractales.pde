float angle = PI / 5;
float ratio = 0.67;
float initialLen = 140;

void setup() {
  size(600, 500);
  background(0, 0, 0);
  stroke(255, 255, 255);
  frameRate(10); // Ajusta la velocidad de la figura
  translate(width / 2, height);
  noLoop();
}

void draw() {
  background(0, 0, 0);
  translate(width / 2, height);
  branch(initialLen);
  initialLen *= ratio; // Acorta la longitud para la siguiente iteración
}

void branch(float len) {
  line(0, 0, 0, -len);
  translate(0, -len);
  
  if (len > 4) {
    pushMatrix();
    rotate(angle);
    branch(len * ratio);
    popMatrix();
    pushMatrix();
    rotate(-angle);
    branch(len * ratio);
    popMatrix();
  }}
