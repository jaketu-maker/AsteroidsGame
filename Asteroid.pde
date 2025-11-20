class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
    corners = 6;
    xCorners = new int[]{-11,7,13,6,-11,-5};
    yCorners = new int[]{-8,-8,0,10,8,0};
    rotSpeed = (double)(Math.random()*20)-10;
    myColor = 255;
    myCenterX = Math.random()*500;
    myCenterY = Math.random()*500;
    myXspeed = Math.random();
    myYspeed = Math.random();
    myPointDirection = 0;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  public float getX(){
    return float((int)(myCenterX));
  }
  public double getY(){
    return float((int)(myCenterY));
  }
}
