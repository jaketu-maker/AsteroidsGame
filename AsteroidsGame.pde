Stars[] sky = new Stars[200];
Spaceship l;
public void setup() {
  size(500, 500);
  background(0);
  for (int i = 0; i < sky.length; i++) {
    sky[i] = new Stars();
  }
  l = new Spaceship();
}
public void draw() {
  background(0);
  for (int i = 0; i < sky.length; i++) {
    sky[i].show();
  }
  l.show();
  l.move();
}
public void keyPressed(){
  if(key == ' '){
    l.hyperspace();
  }
  if(key == 'a'){
    l.turn(-3);
  }
  if(key == 'd'){
    l.turn(3);
  }
  if(key == 'w'){
    l.accelerate(0.1);
   
  }
}
