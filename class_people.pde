class People {
  PVector pos = new PVector(0, 0);
  PVector vel = new PVector(0, 0);
  PVector acc = new PVector(0, 0);
  float siz;
  float velControl = 0.6;
  float accControl = 0.3;

  People(float posX, float posY, float Tsiz) {
    pos.x = posX;
    pos.y = posY;
    siz = Tsiz;
  }

  void appear() {
    
    fill(255);
    noStroke();
    ellipse(pos.x, pos.y, siz, siz);
  }

  void walk() {
    pos.add(vel);
    vel.add(acc);

    //Random acceleration

    acc.x = random(-accControl, accControl);
    acc.y = random(-accControl, accControl);

    //Improving randomness ---> work on progress
    
    //acc.x = map(randomGaussian(), 0, 1, -accControl, accControl);
    //acc.y = map(randomGaussian(), 0, 1, -accControl, accControl);
    

    //Srcreen edges control

    if (pos.x > width) {
      pos.x = 0;
    }
    if (pos.x < 0) {
      pos.x = width;
    }
    if (pos.y > height) {
      pos.y = 0;
    }
    if (pos.y < 0) {
      pos.y = height;
    }

    //Velocity control

    if (vel.x > velControl) {
      vel.x = velControl;
    }

    if (vel.y > velControl) {
      vel.y = velControl;
    }

    if (vel.x < -velControl) {
      vel.x = -velControl;
    }

    if (vel.y < -velControl) {
      vel.y = -velControl;
    }

    //println(vel.x + " " + vel.y);
  }
}
