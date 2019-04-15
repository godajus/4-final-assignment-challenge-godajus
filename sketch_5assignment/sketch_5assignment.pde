
int drawAvatarX = 85;
int score = 0;
PImage sky;
PImage grass;
PImage rainy;



float[]ballX = {10, 50, 200, 240, 290, 340, 450, };
float[] ballY = {  0, 0, 0, 0, 0, 0, 0 };
color[] ballColor= { color(0, 0, 255), color (255, 0, 0), color (100, 30, 260), color (250, 240, 130), color (50, 160, 95), color (135, 145, 180), color (210, 110, 78)};

void setup() {
  smooth(0);
  size(500, 500);
  background(180, 250, 250);
  frameRate(60);
  sky = loadImage("sky.jpg");
 grass = loadImage("grass.jpg");
 rainy= loadImage("rainy.png");


    
}

void draw() {
  background(180, 250, 250);
  fill(0, 255, 0);
  rect(0, 440, 500, 60);
   image(sky,0,0);
  image(grass,0,450);
  image(rainy,0,0);
  
 
  
   if (keyPressed==true) {
  image(rainy,0,0);
  //fill(0,255,0);
  } else {
    image(sky,0,0);
  }
   image(grass,0,450);
  drawAvatar(mouseX);
  for (int i = 0; i < ballX.length; i++) {
    drawBall(ballX[i], ballY[i], ballColor[i]);
    ballY[i] += 3;

    if (ballY[i]>500) {
      ballY[i] = 0;
    }
    
   print(dist(ballX[i], ballY[i], mouseX, 275) + "\t");
   if (dist(ballX[i], ballY[i], mouseX, 275) < 40) {
      println("hit");
     score++;
     textSize(100);
     text("YOU LOST", 100, 70, 100, 100);
   } else {
 println("Miss");
    textSize(100);
   text("YOU WON", 250, 250, 100, 100);
    }
  }
 println("---------------");
  
  stroke(255);
 fill(0);
  text(score, 200, 150);
}



void drawBall (float x, float y, color theColor) {
  fill(theColor);
  ellipse(x, y, 30, 30);
}
void drawAvatar(int x) {
  fill(255);
stroke(0);
  strokeWeight(2);
  rect(x, 320, 30, 70); //body
  ellipse(x+15, 300, 50, 50); //head
  ellipse(x+5, 300, 20, 20); //left eye
  ellipse(x+25, 300, 20, 20); //right eye
  ellipse(x+5, 300, 5, 5); //left pupil
  ellipse(x+25, 300, 5, 5); //right pupil
  ellipse(x+15, 315, 10, 5); //mouth
  line(x, 320, x-25, 360); //left arm
  line(x+30, 320, x+55, 360); //right arm
  line(x, 390, x, 440); //left leg
  line(x+30, 390, x+30, 440); //right leg
}
