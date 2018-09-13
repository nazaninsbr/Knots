float angle =0;
void setup(){
  size(600, 400, P3D); 
  
}

void draw(){
  background(0);
  translate(width/2, height/2);
  rotateY(angle);
  angle += 0.03;
  float beta = 0;
  noFill();
  stroke(255);
  beginShape();
  while(beta<PI){
    float r = 100*(0.8 + 1.6 * sin(6*beta));
    float theta = 2 * beta;
    float phi = 0.6 * PI * sin(12*beta);
    
    float x = r*cos(phi)*cos(theta);
    float y = r*cos(phi)*sin(theta);
    float z = r*sin(phi);
    // stroke(x, y, z);
    stroke(255, r, 255);
    beta += 0.001;
    vertex(x, y, z);
  }
  endShape();
}