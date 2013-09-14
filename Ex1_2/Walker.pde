
// tendency walking towards down and right
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

void step() {
  
    // 30% chance moving towards down right
    float dx = random(-1, 3);
    float dy = random(-1, 3);
    
    x += dx;
    y += dy;
  }
}
