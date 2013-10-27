void setup() {
  size(640, 480);
  background(255);
}
void draw() {
  float xloc = randomGaussian();
  float col  = randomGaussian();
  
  int cmean = 128; 
  int csd = 128;
  int cc = int(xloc*csd) + cmean;
  
  float r = random(1);
  // 50% chance for red and green
  int c = color(r < 0.5 ? cc : 0, r > 0.5 ? cc : 0, 0);
  
  int mean = width / 2;
  int lsd = 100;
  int x = int(xloc * lsd) + mean;
  
  
  noStroke();
  fill(c, 80);
  ellipse(x, height/2, 10, 10);
}
