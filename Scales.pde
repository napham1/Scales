void setup() {
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  boolean shift = true;
  for(int y = 0; y < 600; y = y + 25){
    for(int x = 0; x < 600; x = x + 16){
      if (shift == true)
        scale(x + 10, y);
      else 
        scale(x, y);
    }
    if(shift == true)
      shift = false;
    else
      shift = true;
  }
}
void scale(int x, int y) {
  noStroke();
  fill((int)(Math.random() * 256),(int)(Math.random() * 256),(int)(Math.random() * 256));
  triangle(x, y - 26, x - 13, y, x + 13, y);
  arc(x, y, 25, 25, 0, PI);
  fill((int)(Math.random() * 256),(int)(Math.random() * 256),(int)(Math.random() * 256));
  ellipse(x, y, 5, 5);
}
