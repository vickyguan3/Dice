void setup()
{
  size(400,450);
  noLoop();
}
void draw()
{
  background(210);
  int total = 0;

  for(int y = 30; y<= 360; y = y+50)
  {
    for(int x = 30; x<=360; x = x+50)
    {
      Die one = new Die(x,y);
      one.show();
      one.roll();
      total = total + one.numDots;
    }
  }
  fill(255);
  textSize(15);
  text("Total " + total, 165, 425);

}
void mousePressed()
{
  redraw();
}
class Die
{
  int myX, myY;
  int numDots = (int)(Math.random()*6+1);
  Die(int x, int y)
  {
    myX = x;
    myY = y;
  }
  void roll() 
  {
    fill(255);
    numDots = (int)(Math.random()*6+1);
    if (numDots == 1)
    {
      ellipse(myX + 22.5, myY + 22.5,10,10);
    }
    if (numDots == 2)
    {
      ellipse(myX + 11.25, myY + 22.5-11.25,10,10);
      ellipse(myX + (11.25+22.5), myY + 22.5+11.25,10,10);
    }
    if (numDots == 3)
    {
      ellipse(myX + 11.25, myY + 22.5-11.25,10,10);
      ellipse(myX + 22.5, myY + 22.5,10,10);
      ellipse(myX + (11.25+22.5), myY + 22.5+11.25,10,10);
    }
    if (numDots == 4)
    {
      ellipse(myX + 11.25, myY + 11.25,10,10);
      ellipse(myX + 22.5+11.25, myY + 11.25,10,10);
      ellipse(myX + 22.5+11.25, myY + 22.5+ 11.25,10,10);
      ellipse(myX + 22.5-11.25, myY + 22.5+ 11.25,10,10);
    }
    if (numDots == 5)
   {
      ellipse(myX + 11.25, myY + 11.25,10,10);
      ellipse(myX + 22.5, myY + 22.5,10,10);
      ellipse(myX + 22.5+11.25, myY + 11.25,10,10);
      ellipse(myX + 22.5+11.25, myY + 22.5+ 11.25,10,10);
      ellipse(myX + 22.5-11.25, myY + 22.5+ 11.25,10,10);
    }
    if (numDots == 6)
    {
     ellipse(myX + 11.25, myY + 11.25,10,10);
      ellipse(myX + 22.5+11.25, myY + 22.5,10,10);
      ellipse(myX + 11.25, myY + 22.5,10,10);
      ellipse(myX + 22.5+11.25, myY + 11.25,10,10);
      ellipse(myX + 22.5+11.25, myY + 22.5+ 11.25,10,10);
      ellipse(myX + 22.5-11.25, myY + 22.5+ 11.25,10,10);
    }


  }
  void show()
  {
    noStroke();
    fill(random(255), random(255),random(255));
    rect(myX,myY,45,45,7);
  }
}