// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com
// Create walker that has tendency to move down and to the right
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
    
    // 30 % more likely to go down and right
    float dx = random(-1, 3);
    float dy = random(-1, 3);
    
    x += dx;
    y += dy;
  }
}
