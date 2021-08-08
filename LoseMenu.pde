float clickDelay = 0;
int newScore;
void lose() {
  for (int i = 0; i < z; i++){
    if (int(coords[i][1]) <= 0){
      play = false;
      start = false;
      lose = true;
      z = 0;
      newScore = score;
      score = 0;
      heldBlock = null;
      xpos[0] = 250;
      xpos[1] = 250;
      xpos[2] = 230;
      xpos[3] = 270;
      heldX[0] = 650;
      heldX[1] = 650;
      heldX[2] = 630;
      heldX[3] = 670;
      heldY[0] = 660;
      heldY[1] = -620;
      heldY[2] = 660;
      heldY[3] = 660;
      coords = new int[1700][2];
    }
  }
}

void loseMenu() {
  background(0);
  textFont(font,48);
  text("You Lost",width/2,height/5);
  textFont(font,20);
  text("Score: " + newScore, width/2, height/5 + 60);
  //Play Again Button
  if (mouseX >= width/2-75 && mouseX <= width/2 + 75 && mouseY >= height/2 - 5 && mouseY <= height/2 + 45){
    fill(255,165); stroke(0,50);
  }
  else {
    fill(255,165); stroke(255,50);
  }
  rect(width/2,height/2 + 20,150,50);
  fill(255,255); stroke(255,255);
  text("Play Again",width/2 ,height/2 + 20);
  
  //Quit To Title Button
  if (mouseX >= width/2-75 && mouseX <= width/2 + 75 && mouseY >= height/2 + 95 && mouseY <= height/2 + 145){
    fill(255,165); stroke(0,50);
  }
  else {
    fill(255,165); stroke(255,50);
  }
  rect(width/2,height/2 + 120,150,50);
  fill(255,255); stroke(255,255);
  text("Quit To Title",width/2,height/2 + 120); 
}
void mouseReleased() {
  if (lose){
    if (mouseButton == LEFT) {
      //Play Again Button
      if (mouseX >= width/2-75 && mouseX <= width/2 + 75 && mouseY >= height/2 - 5 && mouseY <= height/2 + 45){
        start = false;
        play = true;
      }
      
      //Quit To Title Button
      if (mouseX >= width/2-75 && mouseX <= width/2 + 75 && mouseY >= height/2 + 95 && mouseY <= height/2 + 145){
        start = true;
        lose = false;
        play = false;
        clickDelay = 5;
      }
    }
  }
}
