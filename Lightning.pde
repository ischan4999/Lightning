int startX = 250;
int startY = 0;
int endX = 250;
int endY = 0;
boolean direction = true;

void setup()
{
  size(500,500);
  background(0,0,0);
}

void draw()
{
  int changeColor = (int)(Math.random()*255);
  stroke(255-changeColor,255-changeColor,255-changeColor);
  while(endY <= 500){
    if(direction == false)
      endX = startX-(int)(Math.random()*10);
    else
      endX = startX+(int)(Math.random()*10);
    endY = startY+(int)(Math.random()*10);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
    if ((int)(Math.random()*2)==0)
      direction = true;
    else
      direction = false;  
  }
}

void mousePressed()
{
  startX = 250;
  startY = 0;
  endX = 250;
  endY = 0;
  direction = true;
}
