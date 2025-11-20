class Spaceship extends Floater{
  public Spaceship(){
    corners = 3;
    xCorners = new int[]{-8,16,-8};
    yCorners = new int[]{-8,0,8};
    myColor = 255;
    myCenterX = 250;
    myCenterY = 250;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }
  public void hyperspace(){
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myPointDirection = (int)(Math.random()*360);
    myXspeed = 0;
    myYspeed = 0;
  }
  public float getX(){
    return float((int)(myCenterX));
  }
  public float getY(){
    return float((int)(myCenterY));
  }
 
}
