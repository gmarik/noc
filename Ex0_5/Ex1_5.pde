
Walker w;

void setup() {
  size(800,200);
  w = new Walker();
  background(255);
}

void draw() {
  // Run the walker object
  w.step();
  w.render();
}


