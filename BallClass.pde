//Global Variables 
  ball b1;
  ball b2;
  ball b3;
  

//Setup method
public void setup()
{
  size(800, 800);
  background(120);
  b1 = new ball();
  b2 = new ball();
  b3 = new ball();
  
  
}

//Draw method
public void draw()
{
  background(120);
  b1.update();
  b1.drawBall();
  b1.checkEdges();
  
  b2.update();
  b2.drawBall();
  b2.checkEdges();
  
  b3.update();
  b3.drawBall();
  b3.checkEdges();
}

public class ball 
{
  //instance variables
  private int x;
  private int y;
  private int xD; 
  private int yD;
  private int diameter;
  
  public ball()
  //Assume size(800, 800)
  //constructors
  {
    x = (int)(Math.random()*800);
    y = (int)(Math.random()*800);
    xD = 5;
    yD = 5;
    diameter = (int)(Math.random()*50 + 10);
  }
  
  //Constructor that will in speed(xD & yD) and diameter
  public int speed(int xD, int yD, diameter)
  {
    speedx = xD;
    
  
  }
  
  //method
  public void update()
  {
    x += xD;
    y += yD;
  }
  public void drawBall()
  {
    ellipse(x, y, diameter, diameter);
    
  }
  
  public void checkEdges()
  {
    if(x < 0 || x > width)
      xD *= -1;
      
    if(y > height || y < 0)
      yD *= -1;
    
  }
  
  
  
  
  
  
  
  
}




  
  
  
  
  
  
  
}
