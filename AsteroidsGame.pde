Stars[] sky = new Stars[200];
ArrayList<Asteroid> a = new ArrayList<Asteroid>();
ArrayList<Bullet> b = new ArrayList<Bullet>();
Spaceship l;
public void setup() {
  size(500, 500);
  background(0);
  for (int i = 0; i < sky.length; i++) {
    sky[i] = new Stars();
  }
  l = new Spaceship();
  for (int i = 0; i < 100; i++) {
    a.add(new Asteroid());
  }
}
public void draw() {
  background(0);
  for (int i = 0; i < sky.length; i++) {
    sky[i].show();
  }
  l.show();
  l.move();
  for (int i = 0; i < a.size(); i++) {
    a.get(i).move();
    a.get(i).show();
    if (dist((float)(a.get(i).getX()), (float)(a.get(i).getY()), l.getX(), l.getY()) <= 20) {
      a.remove(i);
      i--;
    }
  }
  for (int i = 0; i < b.size(); i++) {
    b.get(i).show();
    b.get(i).move();
    for (int c = 0; c < a.size(); c++) {
      if (dist((float)(b.get(i).getX()), (float)(b.get(i).getY()), a.get(c).getX(), a.get(c).getY()) <= 20) {
        a.remove(c);
        c--;
        b.remove(i);
        i--;
        break;
      }
    }
  }
}
public void keyPressed() {
  if (key == ' ') {
    l.hyperspace();
  }
  if (key == 'a') {
    l.turn(-3);
  }
  if (key == 'd') {
    l.turn(3);
  }
  if (key == 'w') {
    l.accelerate(0.1);
  }
  if (key == 's') {
    b.add(new Bullet(l));
  }
}
