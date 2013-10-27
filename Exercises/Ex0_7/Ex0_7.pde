void setup() {
size(800, 200);
background(255);
} 

float xoff = 0.0, yoff = 0.0, z = 0.0;
void draw() {
loadPixels();

//noiseDetail(5, 0.7);

for (int xx = 0; xx < width; xx++) {

  for (int yy = 0; yy < height; yy++) {

    float bright = map(noise(xoff, yoff, z), 0, 1, 0, 255);
    pixels[xx+yy*width] = color(bright);

    yoff += 0.1;
  }
  xoff += 0.1;
}
updatePixels();
z += 0.1;
}
