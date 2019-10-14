int r=60;
float petalX;
float petalY;
float velocityX = 2;
float velocityY = 2;
float ballX, ballY;



void setup() {
  size(600, 400);
  ballX = width/2;
  ballY = height/2;
}

void draw() {

  background(#43AF76);
  fill(#FFA005);
  for (float i=0; i<PI*2; i+=2*PI/5) {
    petalX=ballX + r*cos(i);
    petalY=ballY + r*sin(i);
    ellipse(petalX, petalY, r, r);
  }
  fill(20, 0, 100);
  ellipse(ballX, ballY, r*1.2, r*1.2);

  moveFlower();
}  

void moveFlower() {
  if (ballX < 0) {
    velocityX = 2;
    velocityY = random (-2, 2);
    ballX += velocityX;
    ballY += velocityY;
  } else if (ballX > width) {
    velocityX = -2;
    velocityY = random (-2, 2);
    ballX += velocityX;
    ballY += velocityY;
  } else if (ballY < 0) {
    velocityX = random (-2, 2);
    velocityY = 2;
    ballX += velocityX;
    ballY += velocityY;
  } else if (ballY > height) {
    velocityX = random (-2, 2);
    velocityY = -2;
    ballX += velocityX;
    ballY += velocityY;
  } else { 
    ballX += velocityX;
    ballY += velocityY;
  }
} 
