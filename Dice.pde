void setup()
{
  size(600, 700);
  textSize(16);
  textAlign(CENTER, CENTER);
  noLoop();
}
void draw() {
  background(0);
  int rollSum = 0;
  for (int y = 0; y < 600; y = y + 200) {
    for (int x = 0; x < 600; x = x + 200) {
      Die hal = new Die(x, y);
      hal.roll();
      rollSum = rollSum + hal.total();
      hal.show();
    }
  }
  rect(0, 600, 600, 700);
  fill(255);
  text(rollSum, 300, 650);
}

void mousePressed() {
  redraw();
}

class Die {

  int myX, myY, diceRoll, rollTotal;

  Die(int x, int y) {
    myX = x;
    myY = y;
    roll();
  }

  void roll() {
    diceRoll = 1 + (int)(Math.random()*6);
  }

  int total() {
    rollTotal = rollTotal + diceRoll;
    return rollTotal;
  }

  void show() {
    fill(255);
    rect(myX, myY, myX+200, myY+200);
    fill(0);
    if (diceRoll==1) {
      ellipse(myX+100, myY+100, 10, 10);
    }
    if (diceRoll==2) {
      ellipse(myX+50, myY+50, 10, 10);
      ellipse(myX+150, myY+150, 10, 10);
    }
    if (diceRoll==3) {
      ellipse(myX+50, myY+50, 10, 10);
      ellipse(myX+100, myY+100, 10, 10);
      ellipse(myX+150, myY+150, 10, 10);
    }
    if (diceRoll==4) {
      ellipse(myX+50, myY+50, 10, 10);
      ellipse(myX+150, myY+50, 10, 10);
      ellipse(myX+50, myY+150, 10, 10);
      ellipse(myX+150, myY+150, 10, 10);
    }
    if (diceRoll==5) {
      ellipse(myX+100, myY+100, 10, 10);
      ellipse(myX+50, myY+50, 10, 10);
      ellipse(myX+150, myY+50, 10, 10);
      ellipse(myX+50, myY+150, 10, 10);
      ellipse(myX+150, myY+150, 10, 10);
    }
    if (diceRoll==6) {
      ellipse(myX+50, myY+50, 10, 10);
      ellipse(myX+150, myY+50, 10, 10);
      ellipse(myX+50, myY+100, 10, 10);
      ellipse(myX+150, myY+100, 10, 10);
      ellipse(myX+50, myY+150, 10, 10);
      ellipse(myX+150, myY+150, 10, 10);
    }
  }
}
