class Bullet extends Floater {
  public Bullet(Spaceship ship) {
    myCenterX = ship .getX();
    myCenterY = ship.getY();
    myXspeed = ship.getXspeed();
    myYspeed = ship.getYspeed();
    myPointDirection = ship.getPointDirection();
    accelerate(.6);
    myColor = color(255, 0, 0);
  }
  public void show() {
    fill(myColor);
    noStroke();
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public float getX() {
    return float((int)(myCenterX));
  }
  public float getY() {
    return float((int)(myCenterY));
  }
}
