public void setup()
{
  size(500,500);
  rectMode(CENTER);
}
int x = 250;
int y = 250;
int siz = 400;
public void draw()
{
  background(0);
  myFractal(x,y,siz);
}
public void myFractal(int x, int y, int siz)
{
  stroke(0);
  ellipse(x,y,siz,siz);
  if (siz >10)
  {
    fill((float)(Math.random()*255), (float)(Math.random()*255), (float)(Math.random()*255));
    myFractal(x,y,siz/2);
    myFractal(x,y,siz/2);
    myFractal(x+siz/2,y+siz/2,siz/2);
    myFractal(x-siz/2,y-siz/2,siz/2);
  }
}
public void mousePressed(){ //optional
    background(0);
    siz+=100;
  }
