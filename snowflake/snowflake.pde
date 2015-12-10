int r=0;
float len1 = 6.0;
float len2 = 4.0;
float div1 = 8/len1;
float div2 = 8/len2;

void setup() {
  // The size function is a statement that tells the computer 
  // how large to make the window.
  // Each function statement has zero or more parameters. 
  // Parameters are data passed into the function
  // and are used as values for telling the computer what to do.
  size(500, 500);
  
  // The background function is a statement that tells the computer
  // which color (or gray value) to make the background of the display window 
  background(0, 0, 0);
  stroke(255,255,255);
  strokeWeight(5);
  
  len1 = random(5,7);
  len2 = random(3,5);
  div1 = 8/len1;
  div2 = 8/len2;
  
  loop();
}

void draw() {
  clear();
  r+=1;
  // move the origin
  translate(250,250);
  rotate(radians(r));
  for(int i=0; i<6; i++) {
    drawLine(200);
    rotate(radians(60));
  }
}

void drawLine(float n) {
  if(n < 6) return;

  line(0,0,0,n*0.8);
  pushMatrix();
  translate(0, n/div1);
  rotate(radians(-90));
  drawLine(n/len1);
  popMatrix();
  
  //line(0,0,0,-n);
  pushMatrix();
  translate(0, n/div1);
  rotate(radians(90));
  drawLine(n/len1);
  popMatrix();
  
  
  line(0,0,0,n*0.8);
  pushMatrix();
  translate(0, n/div2);
  rotate(radians(-90));
  drawLine(n/len2);
  popMatrix();
  
  //line(0,0,0,-n);
  pushMatrix();
  translate(0, n/div2);
  rotate(radians(90));
  drawLine(n/len2);
  popMatrix();

}