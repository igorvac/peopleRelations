People[] person;
int population = 10000;


void setup() {
  //size(500, 500);
  fullScreen();
  person = new People[population];
  for (int i = 0; i < population; i++) {
    person[i] = new People(width/2, height/2, random(2,3));
  }
}

void draw() {
  background(0);
  for (int i = 0; i < population; i++) {
    person[i].appear();
    person[i].walk();
  }
  println(noise(10));
}
