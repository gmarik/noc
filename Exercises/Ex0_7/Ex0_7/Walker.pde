class Walker {
  float x,y,t, step;

  Walker() {
    x = width/2;
    y = height/2;
    t = 0;
    step = 0;
  }
  
  void render() {
    stroke(0);
    point(x,y);
  }

  void step() {
    float dx = random(-1, 1);
    float dy = random(-1, 1);

    step = map(noise(t), 0, 1, 0, 3);
    x += step*dx;
    y += step*dy;
    
    t+= 1;
  }
}
