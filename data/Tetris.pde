// DEADLINE = FEBRUARY 21st

int z = 4;
boolean start = true;
boolean play = false;
boolean help = false;
boolean options = false;
boolean lose = false;
int delay = second();
Blocks[] block = new Blocks[170000];
boolean keyRight, keyLeft, keyZ, keyX, keyUp, keyDown; //Not in use, but could be used to fix mechanics
int score;
boolean haveHeld = false;

void setup() {
  size(500,500);
  block[z] = new Blocks();
}

void draw() {
  blendMode(BLEND);
  update();
  block[z].draw();
  if (!play) {
    if (start) {
      startMenu();
    }
    else if (lose) {
      loseMenu();
    }
  }
  else {
    HUD();
  }
}

void update() {
  background(0);
}

void HUD(){
  stroke(100);
  line(380,0,380,450);
  line(180,0,180,450);
  line(180,450,380,450);
  fill(0);
  square(90,230,100);
  rect(435,300,100,300);
  fill(255);
  textAlign(CENTER,CENTER);
  text("Score: " + score,90,100);
  text ("Next",435,130);
  text("Hold",90,150);
  drawHeld();
  nextBlock();
}

void testKey() {
  if (keyPressed){
    if (keyCode == DOWN) {
      block[z].softDrop();
    }
  }
}

void keyPressed() {
  if (play) {
    if (keyCode == RIGHT) {
      block[z].right();
    }
    if (keyCode == LEFT) {
      block[z].left();
    }
    if (keyCode == UP) {//maybe split into keyPressed()
      block[z].hardDrop();
      delay = millis();
    }
    if (key == 'z') {
      block[z].rotateCounterClockwise();
    }
    if (key == 'x') {
      block[z].rotateClockwise();
    }
    if (key == 'c') {
      if (!haveHeld) {
        block[z].hold();
      }
      haveHeld = true;
    }
    if (key == '/') {
      println("hi"); //<>//
    }
  }
}

String getBlock() {
  int blockNum = floor(random(7));
  if (blockNum == 0) {
    return "I";
  }
  if (blockNum == 1) {
    return "L";
  }
  if (blockNum == 2) {
    return "J";
  }
  if (blockNum == 3) {
    return "S";
  }
  if (blockNum == 4) {
    return "Z";
  }
  if (blockNum == 5) {
    return "T";
  } 
  else {
    return "O";
  }
}
