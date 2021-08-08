 //JOURNAL: improved collisions and fixed it
int[][] coords = new int[1700][2];
float debug;
PFont font;
boolean a = false;
int[] ypos = new int[4];
int[] xpos = new int[4];
String currentBlock = getBlock(), nextBlock = getBlock(), nextBlock2 = getBlock(), nextBlock3 = getBlock();
String heldBlock;
boolean hold;
class Blocks {
  float yspeed = 20;
  boolean blockDown;
  int fallInterval = 300;
  int tempTime = 0;
  int s = millis();
  int x = millis();
  int collision;
  int stopHeight = height - 20;
  int tempX;
  int state = 1;
  Blocks() {
    clearLine();
    if (!hold) {
      currentBlock = nextBlock;
      nextBlock = nextBlock2;
      nextBlock2 = nextBlock3;
      nextBlock3 = getBlock();
    }
    hold = false;
    haveHeld = false;
    velocity();
    for (int i = z-4; i < z; i++) {
    }
    if (currentBlock == "T") {
      xpos[0] = 250;
      xpos[1] = 250;
      xpos[2] = 230;
      xpos[3] = 270;
      ypos[0] = 0;
      ypos[1] = -20;
      ypos[2] = 0;
      ypos[3] = 0;   
    }
    if (currentBlock == "I") {
      xpos[0] = 250;
      xpos[1] = 230;
      xpos[2] = 270;
      xpos[3] = 290;
      ypos[0] = 0;
      ypos[1] = 0;
      ypos[2] = 0;
      ypos[3] = 0;   
    }
    if (currentBlock == "L") {
      xpos[0] = 250;
      xpos[1] = 270;
      xpos[2] = 230;
      xpos[3] = 270;
      ypos[0] = 20;
      ypos[1] = 20;
      ypos[2] = 20;
      ypos[3] = 0;   
    }
    if (currentBlock == "J") {
      xpos[0] = 250;
      xpos[1] = 230;
      xpos[2] = 230;
      xpos[3] = 270;
      ypos[0] = 20;
      ypos[1] = 0;
      ypos[2] = 20;
      ypos[3] = 20;   
    }
    if (currentBlock == "S") {
      xpos[0] = 250;
      xpos[1] = 230;
      xpos[2] = 250;
      xpos[3] = 270;
      ypos[0] = 0;
      ypos[1] = 20;
      ypos[2] = 20;
      ypos[3] = 0;   
    }
    if (currentBlock == "Z") {
      xpos[0] = 250;
      xpos[1] = 230;
      xpos[2] = 250;
      xpos[3] = 270;
      ypos[0] = 0;
      ypos[1] = 0;
      ypos[2] = 20;
      ypos[3] = 20;   
    }
    if (currentBlock == "O") {
      xpos[0] = 250;
      xpos[1] = 250;
      xpos[2] = 270;
      xpos[3] = 270;
      ypos[0] = 0;
      ypos[1] = -20;
      ypos[2] = 0;
      ypos[3] = -20;   
    }
  }
  
  void draw() {
    stroke(255);
    rectMode(CENTER);
    if (play){
      testKey();
      testPos();
      show();
      ghost();
      collide();
      stopBlock();
      velocity();
    }
  }
  
  void velocity() {
    if (millis() > s + fallInterval && !a) {
      for (int i = 0; i < 4; i++){
        ypos[i] += yspeed;
        s = millis();
      }
    }
    if (a) {
      s = millis();
    }
  }
  
  void show() {
    fill(255,255);
    stroke(100,255);
    for (int i = 0; i < 4; i++){
      rect(xpos[i], ypos[i], 20, 20);
    }
    for (int i = 0; i < z; i++) {
      if (coords[i][0] != 0) {
        rect(float(coords[i][0]), float(coords[i][1]), 20, 20);
      }
    }
  }
  
  void ghost() { //optimization possible
    float lowestPoint = height-60;
    float tempLow = -100;
    int lowestY = 0;
    for (int i = 0; i < 4; i++) {
      if (ypos[i] > tempLow){
        tempLow = ypos[i];
        lowestY = i;
      }
    }
    for (int j = 0; j < 4; j++){
      for(int i = 0; i < z-4; i++){
        if (lowestPoint >= int(coords[i][1]) - 20 && xpos[j] == int(coords[i][0]) && lowestPoint >= ypos[j] && ypos[j] <= int(coords[i][1])){
          if ((lowestPoint == int(coords[i][1]) - 20 && ypos[lowestY] <= ypos[j]) || (lowestPoint > int(coords[i][1]) - 20)) {
            lowestPoint = (int(coords[i][1]) - 20);
            lowestY = j;
          }
        }
      }
      if (ypos[j] > tempLow && xpos[j] == xpos[lowestY]){
        tempLow = ypos[j];
        lowestY = j;
      }
    }
    for (int i = 0; i < 4; i++){
        float ghostY = lowestPoint - (ypos[lowestY] - ypos[i]);
        fill(255,25);
        stroke(100,255);
        rect(xpos[i],ghostY,20,20); 
    }
    debug = lowestPoint;
  }
  
  void testPos(){
    boolean inField = true;
    String outOfField = "";
    for (int i = 0; i < 4; i++) {
      if (xpos[i] > 370) {
        inField = false;
        outOfField = "right";
      }
      if (xpos[i] < 190) {
        inField = false;
        outOfField = "left";
      }
    }
    if (!inField) {
      for (int i = 0; i < 4; i++) {
        if (outOfField == "right") {
          xpos[i] -= 20;
        }
        if (outOfField == "left") {
          xpos[i] += 20;
        }
      }
    }
  }
  
  void right() {
    boolean dontMove = false;
    for (int i = 0; i < 4; i++){
      if (xpos[i] <= 370) {
        for(int j = 0; j < z-4; j++){
          if (ypos[i] == int(coords[j][1]) && xpos[i] + yspeed == int(coords[j][0])){
            dontMove = true;
          }
        }
      }
      else {
        dontMove = true;
      }
    }
    for (int i = 0; i < 4; i++) {
      if (!dontMove) {
          xpos[i] += yspeed;
      }
    }
  }
  
  void left() {
    boolean dontMove = false;
    for (int j = 0; j < 4; j++){
      if (xpos[j] >= 190) {
        for(int i = 0; i < z-4; i++){
          if (ypos[j] == int(coords[i][1]) && xpos[j] - yspeed == int(coords[i][0])) {
            dontMove = true;
          }
        }
      }
      else { 
        dontMove = true;
      }
    }
    for (int j = 0; j < 4; j++){
      if (!dontMove) {
          xpos[j] -= yspeed;
      }
    }
  }
  
  void softDrop() {
    s -= 150;
  }
  
  void hardDrop() {
    stopHeight = height - 60;
    int firstHeight = 0;
    for (int i = 0; i < 4; i++) {
      if (ypos[firstHeight] <= ypos[i]){
        firstHeight = i;
      }
    }
    for (int i = 0; i < 4; i++) {
      for (int j = 0; j < z-4; j++) {
        if (xpos[i] == int(coords[j][0])){
          if (stopHeight >= int(coords[j][1]) - 20 && ypos[i] <= int(coords[j][1])) {
            if ((stopHeight > int(coords[j][1]) - 20) || (ypos[firstHeight] <= ypos[i] && stopHeight == int(coords[j][1]) - 20)) {
              stopHeight = int(coords[j][1]) - 20;
              firstHeight = i;
            }
          }
        }
      }
    }
    int j = 0;
    for (int i = z-4; i < z; i++) {
        if (i >= 0)  {
          for (int l = 0; l < 4; l++) {
            if (xpos[l] > 370) {
              for (int k = 0; k < 4; k++) {
                xpos[k] -= 20;
              }
            }
            if (xpos[l] < 190) {
              for (int k = 0; k < 4; k++) {
                xpos[k] += 20;
              }
            } 
          }
          coords[i][0] = xpos[j];
          coords[i][1] = stopHeight - (ypos[firstHeight] - ypos[j]);
        }
        j+=1;
    }
    lose();
    z+=4;
    block[z] = new Blocks();
  }

  void rotateClockwise() {
    for (int i = 1; i < xpos.length; i++){
      int firstHeight = ypos[i];
      ypos[i] = xpos[i] - xpos[0] + ypos[0]; xpos[i] = ypos[0] - firstHeight + xpos[0];
    }
  }
  
  void rotateCounterClockwise() {
    for (int i = 1; i < xpos.length; i++){
      int firstHeight = ypos[i];
      ypos[i] = xpos[0] - xpos[i] + ypos[0]; xpos[i] = firstHeight - ypos[0] + xpos[0];
    }
  }
  
  void hold() {
    if (heldBlock == null) {
      heldBlock = currentBlock;
      block[z] = new Blocks();
      hold = true;
    }
    else {
      String tempBlock = currentBlock;
      currentBlock = heldBlock;
      heldBlock = tempBlock;
      hold = true;
      block[z] = new Blocks();
    }
  }
  
  
  void collide() {
    a = false;
    boolean inBlock = false;
    for (int j = 0; j < 4; j++){
      if (ypos[j] == height || ypos[j] == height - 60) {
        a = true;
        stopHeight = height-60;
        tempX = int(xpos[j]);
      }
      for(int i = 0; i < z-4; i++){
        if (ypos[j] == int(coords[i][1]) - 20 && xpos[j] == int(coords[i][0])){
          a = true;
          stopHeight = int(coords[i][1]) - 20;
          tempX = int(xpos[j]);
        }
        if (ypos[j] == int(coords[i][1]) && xpos[j] == int(coords[i][0])){
          inBlock = true;
        }
      }
      if (ypos[j] == stopHeight && xpos[j] == tempX){
        a = true;
      }
    }
    if (inBlock) {
      for (int i = 0; i < 4; i++) {
         ypos[i] -= 20;
      }
    }
  }
  
  void stopBlock(){
    int firstHeight = stopHeight;
    if (a){
      if (millis() > tempTime + fallInterval * 3 && tempTime != 0){
        tempTime = 0;
        int j = 0;
        for (int i = z-4; i < z; i++){
          ypos[j] = stopHeight - (firstHeight - ypos[j]); 
          coords[i][0] = int(xpos[j]);
          coords[i][1] = int(ypos[j]);
          j+=1;
        }
        lose();
        z+=4;
        block[z] = new Blocks();
        a = false;
      }
      if (tempTime == 0) {
        tempTime = millis();
      }
    }
    if(!a){
      tempTime = 0;
    }
  }

  void clearLine() {
    int[] amountInLine = new int[25];
    int linesCleared = 0;
    for (int i = 0; i < coords.length; i++) {
      if (coords[i][1] < 500){
        amountInLine[coords[i][1]/20] += 1;
      }
    }
    for (int i = 0; i < amountInLine.length; i++) {
      if (amountInLine[i] >= 10){
        for (int j = 0; j < coords.length; j++) {
          if (int(coords[j][1]) == i*20) {
            coords[j][1] = 600;
          }
          if (int(coords[j][1]) < i*20) {
            coords[j][1] += 20;
          }
        }
        linesCleared += 1;
      }
    }
    points(linesCleared);
  }
  
  void points(int linesCleared) {
    score += 100 * pow(linesCleared,2);
    println(pow(linesCleared,2));
  }
}
