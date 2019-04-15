void setup() {
  size (500, 500);
  noStroke();
}

void draw() {
  background (0);

  for (int y = 1; y< 5; y++) {
    for (int x = 1; x< 5; x++) {
      drawFlower(x*100, y*100);
   
    }   
  }

}

void drawFlower(int x, int y) {

  float a=random(255);
  float h=random(255);
  float m=random(255);
  

  //fill(a,h,m);

frameRate(10);
  
  fill(a,h,m);
  ellipse(x-30, y, 30, 30);
  fill(a+30,h-20,m);
  ellipse(x-15, y-25, 30, 30);
  fill(a+100,h-50,m+50);
  ellipse(x+15, y-25, 30, 30);
  fill(a-10,h-50,m+30);
  ellipse(x-15, y+25, 30, 30);
  fill(a+50,h+10,m+150);
  ellipse(x+15, y+25, 30, 30);
  fill(a-100,h+50,m-20);
  ellipse(x+30, y, 30, 30);
  fill(mouseY,mouseX,mouseY);
  ellipse(x, y, 40, 40);
    }
    
  
  
