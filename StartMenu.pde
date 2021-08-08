void startMenu() {
    font = createFont("Tetris.ttf",72);
    textFont(font,72);
    textAlign(CENTER,CENTER);
    text("Tetris",width/2,height/5);
    font = loadFont("ArialMT-48.vlw");
    textFont(font,20);
    buttons();
}
  
void buttons() {
  //Play Button
  if (mouseX >= width/2-75 && mouseX <= width/2 + 75 && mouseY >= height/2 - 25 && mouseY <= height/2 +25){
    fill(255,165); stroke(0,50);
  }
  else {
    fill(255,165); stroke(255,50);
  }
  rect(width/2,height/2,150,50);
  fill(255,255); stroke(255,255);
  text("Play",width/2,height/2); 
  
  //Help Button
  if (mouseX >= width/2-75 && mouseX <= width/2 + 75 && mouseY >= height/2 + 25 && mouseY <= height/2 + 75){
    fill(255,165); stroke(0,50);
  }
  else {
    fill(255,165); stroke(255,50);
  }
  rect(width/2,height/2 + 50,150,50);
  fill(255,255); stroke(255,255);
  text("Help",width/2,height/2 + 50); 
  
  //Options Button
  if (mouseX >= width/2-75 && mouseX <= width/2 + 75 && mouseY >= height/2 + 75 && mouseY <= height/2 + 125){
    fill(255,165); stroke(0,50);
  }
  else {
    fill(255,165); stroke(255,50);
  }
  rect(width/2,height/2 + 100,150,50);
  fill(255,255); stroke(255,255);
  text("Options",width/2,height/2 + 100); 
  
  //Quit Button
  if (mouseX >= width/2-75 && mouseX <= width/2 + 75 && mouseY >= height/2 + 125 && mouseY <= height/2 + 175){
    fill(255,165); stroke(0,50);
  }
  else {
    fill(255,165); stroke(255,50);
  }
  rect(width/2,height/2 + 150,150,50);
  fill(255,255); stroke(255,255);
  text("Quit",width/2,height/2 + 150); 
  clickDelay -= 1;
}
  
  //Test for mouse clicks
  void mouseClicked(){
  if (mouseButton == LEFT && clickDelay <= 0) {
    //Play Button
    if (mouseX >= width/2-75 && mouseX <= width/2 + 75 && mouseY >= height/2 - 25 && mouseY <= height/2 +25){
      start = false;
      play = true;
    }
    
    //Help Button
    if (mouseX >= width/2-75 && mouseX <= width/2 + 75 && mouseY >= height/2 + 25 && mouseY <= height/2 + 75){
      help = true;
    }
    
    //Options Button
    if (mouseX >= width/2-75 && mouseX <= width/2 + 75 && mouseY >= height/2 + 75 && mouseY <= height/2 + 125){
      options = true;
    }
      
    //Quit Button
    if (mouseX >= width/2-75 && mouseX <= width/2 + 75 && mouseY >= height/2 + 125 && mouseY <= height/2 + 175){
      exit();
    }
  }
}
