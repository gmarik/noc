
// 50% chance of walking towards the mouse
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
    
    if (r < 0.5) {
      dx = random(-1, 2);
      dy = random(-1, 2);
    } else {
      // move towards mouse
      dx = towards(x, mouseX); 
      dy = towards(y, mouseY);
    }
    
    x += dx;
    y += dy;
  }
}
