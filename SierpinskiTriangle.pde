public void setup()
{
size(500,500);
background((float)Math.random()*300.,(float)Math.random()*500, (float)Math.random()*500);
}
public void draw()
{
sierpinski(0,0,500);
changeBackground();

}

public void sierpinski(int x, int y, int len) 
{
if(len <= 20)
  triangle(x,y, x+(len/2), y+len, x+(len), y);
else{
  sierpinski(x,y,len/2);
  sierpinski(x+len/2,y,len/2);
  sierpinski(x+len/4,y+len/2,len/2);
}
  
}
public boolean changeBackground(){
 
  if(mousePressed == true)
  background((float)Math.random()*300.,(float)Math.random()*500, (float)Math.random()*500);
  
  return false;
}
