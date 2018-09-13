float angle =0;
void setup(){
  size(600, 400, P3D); 
  
}

void draw(){
  background(0);
  translate(width/2, height/2);
  rotateY(angle);
  rotateX(angle*0.5);
  angle += 0.03;
  float u = 0;
  noFill();
  stroke(255);
  strokeWeight(3);
  beginShape();
  float k = 2;
  while(u<(4*k + 2)*PI){
    
    float x = cos(u)*(2 - cos(2*u/(2*k + 1)));
    float y = sin(u)*(2 - cos(2*u/(2*k + 1)));
    float z = -sin(2*u/(2*k + 1));
    
    stroke(100, 120, 100);
    u += 0.001;
    vertex(20*x, 20*y, 20*z);
  }
  endShape();
}