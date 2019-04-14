people one;

void setup() {
  size(500, 500);
  one = new people(width/2, height/2, 10);
}

void draw() {
  background(0);
  one.appear();
  one.walk();
}
