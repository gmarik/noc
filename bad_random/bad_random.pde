// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

Walker w;
int[] randomCounts;

void setup() {
  
  size(800,200);
  // Create a walker object
  w = new Walker();
  background(255);
  randomCounts = new int[4];
}

void draw() {
  // Run the walker object
  w.step();
  w.render();
  
  int minx = -1;
  int maxx =  1;
  
  float f = random(minx, maxx);
  int index = 0;

  println(round(f+1));
  randomCounts[round(f+1)]+=1;
 
  stroke(175);
  
  fill(175);
  int w = width/randomCounts.length;
  for (int x = 0; x < randomCounts.length; x++) { //Graphing the results 
  rect(x*w,height-randomCounts[x],w-1,randomCounts[x]);
}
}


