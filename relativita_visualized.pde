int x = 30;
int y = 30;
int count = 0;
int bigK = int(pow(5, 5));

float alpha = PI/3;
float sommaCampo = 0;

Body[] Bodies = new Body[200];

void setup() {
  size(1000, 800, P3D);
  background(255);
  stroke(51);
  noFill();
}

void draw() {  
  background(220);

  for (int i = 0; i < count; i++) {
    Bodies[i].display();
  }
  
  translate(width/2, height/2);    
  rotateX(alpha);
  translate(-width/2, -height/2);

  for (int i = -width*2; i < width*4; i += x) {
    beginShape(TRIANGLE_STRIP);
    for (int j = -height*2; j < height; j += y) {
      sommaCampo = 0;
      
      for (int k = 0; k < count; k++) {
        float rQuadro = pow((Bodies[k].x - i), 2) + pow((Bodies[k].y - j), 2);
        sommaCampo += -1 * bigK * Bodies[k].M/rQuadro;
      }
      vertex(i, j, sommaCampo);
      vertex(i + x, j + y, sommaCampo);
    }
    endShape();
  }
}

void mousePressed() {
  Bodies[count] = new Body();
  count++;
}
