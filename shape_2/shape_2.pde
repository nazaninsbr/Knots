float angle =0;
void setup(){
  size(600, 400, P3D); 
  
}

void draw(){
  background(0);
  translate(width/2, height/2);
  rotateY(angle);
  rotateX(angle*0.2);
  angle += 0.03;
  float u = 0;
  noFill();
  stroke(255);
  strokeWeight(3);
  beginShape();
  while(u<2*PI){

    float x = 41*cos(u) - 18*sin(u) - 83*cos(2*u) - 83*sin(2*u) - 11*cos(3*u) + 27*sin(3*u);
    float y = 36*cos(u) + 27*sin(u) - 113*cos(2*u) + 30*sin(2*u) + 11*cos(3*u) - 27*sin(3*u);
    float z = 45*sin(u) - 30*cos(2*u) + 113*sin(2*u) - 11*cos(3*u) + 27*sin(3*u);

    // stroke(x, y, z);
    stroke(200, u, 180);
    u += 0.001;
    vertex(x, y, z);
  }
  endShape();
}