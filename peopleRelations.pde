People[] person;
int population = 500;


void setup() {
  size(800, 800, FX2D);
  //fullScreen();
  person = new People[population];
  for (int i = 0; i < population; i++) {
    person[i] = new People(random(width), random(height), 3, 255);
  }
}

void draw() {
  background(0);
  for (int i = 0; i < population; i++) {
    person[i].appear();
    person[i].walk();
    for (int j = 0; j < population; j++) {
      if ( dist(person[i].positionX(), person[i].positionY(), person[j].positionX(), person[j].positionY()) < 50) {
        stroke(255, 0, 0);
        strokeWeight(0.2);
        line(person[i].positionX(), person[i].positionY(), person[j].positionX(), person[j].positionY());
        noStroke();
      }
    }
  }
}
