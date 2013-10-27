
class Walker {
  int x,y;

  Walker() {
    x = width/2;
    y = height/2;
  }

  void render() {
    stroke(0);
    point(x,y);
  }

int towards(int z, int m) {
  int dz = z - m;
  
  if (dz == 0) return 0;
  else return -(dz/abs(dz));
}
  
void step() {

    float dx;
    float dy;    
    float r = random(1);
    
    
     dx = random(-1, 2);
     dy = random(-1, 2);
    
    
    float size = randomGaussian();
    float mean = 1;
    float sd = 0.8;
    
    float step = sd * size + mean; 
     
    
    x += (dx * step);
    y += (dy * step);
  }
}
