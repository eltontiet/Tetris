int[] heldX = new int[4],heldY = new int[4];
{
      heldX[0] = 650;
      heldX[1] = 650;
      heldX[2] = 630;
      heldX[3] = 670;
      heldY[0] = 660;
      heldY[1] = 620;
      heldY[2] = 660;
      heldY[3] = 660;
}
int[] nextX = new int[4],nextY = new int[4];
{
      nextX[0] = 650;
      nextX[1] = 650;
      nextX[2] = 630;
      nextX[3] = 670;
      nextY[0] = 660;
      nextY[1] = -620;
      nextY[2] = 660;
      nextY[3] = 660;
}
void drawHeld() {  
  if (heldBlock == "T") {
    heldX[0] = 70;
    heldX[1] = 90;
    heldX[2] = 90;
    heldX[3] = 110;
    heldY[0] = 220;
    heldY[1] = 240;
    heldY[2] = 220;
    heldY[3] = 220;   
  }
  if (heldBlock == "I") {
    heldX[0] = 60;
    heldX[1] = 80;
    heldX[2] = 100;
    heldX[3] = 120;
    heldY[0] = 230;
    heldY[1] = 230;
    heldY[2] = 230;
    heldY[3] = 230;   
  }
  if (heldBlock == "L") {
    heldX[0] = 90;
    heldX[1] = 110;
    heldX[2] = 70;
    heldX[3] = 110;
    heldY[0] = 240;
    heldY[1] = 240;
    heldY[2] = 240;
    heldY[3] = 220;   
  }
  if (heldBlock == "J") {
    heldX[0] = 90;
    heldX[1] = 70;
    heldX[2] = 70;
    heldX[3] = 110;
    heldY[0] = 240;
    heldY[1] = 220;
    heldY[2] = 240;
    heldY[3] = 240;   
  }
  if (heldBlock == "S") {
    heldX[0] = 90;
    heldX[1] = 70;
    heldX[2] = 90;
    heldX[3] = 110;
    heldY[0] = 220;
    heldY[1] = 240;
    heldY[2] = 240;
    heldY[3] = 220;   
  }
  if (heldBlock == "Z") {
    heldX[0] = 90;
    heldX[1] = 70;
    heldX[2] = 90;
    heldX[3] = 110;
    heldY[0] = 220;
    heldY[1] = 220;
    heldY[2] = 240;
    heldY[3] = 240;   
  }
  if (heldBlock == "O") {
    heldX[0] = 80;
    heldX[1] = 80;
    heldX[2] = 100;
    heldX[3] = 100;
    heldY[0] = 240;
    heldY[1] = 220;
    heldY[2] = 240;
    heldY[3] = 220;   
  }
  for (int i = 0; i < 4; i++) {
    square(heldX[i],heldY[i],20);
  }
}
void nextBlock() {
  if (nextBlock == "T") {
    nextX[0] = 415;
    nextX[1] = 435;
    nextX[2] = 435;
    nextX[3] = 455;
    nextY[0] = 190;
    nextY[1] = 210;
    nextY[2] = 190;
    nextY[3] = 190;   
  }
  if (nextBlock == "I") {
    nextX[0] = 405;
    nextX[1] = 425;
    nextX[2] = 445;
    nextX[3] = 465;
    nextY[0] = 200;
    nextY[1] = 200;
    nextY[2] = 200;
    nextY[3] = 200;   
  }
  if (nextBlock == "L") {
    nextX[0] = 435;
    nextX[1] = 455;
    nextX[2] = 415;
    nextX[3] = 455;
    nextY[0] = 210;
    nextY[1] = 210;
    nextY[2] = 210;
    nextY[3] = 190;   
  }
  if (nextBlock == "J") {
    nextX[0] = 435;
    nextX[1] = 415;
    nextX[2] = 415;
    nextX[3] = 455;
    nextY[0] = 210;
    nextY[1] = 190;
    nextY[2] = 210;
    nextY[3] = 210;   
  }
  if (nextBlock == "S") {
    nextX[0] = 435;
    nextX[1] = 415;
    nextX[2] = 435;
    nextX[3] = 455;
    nextY[0] = 190;
    nextY[1] = 210;
    nextY[2] = 210;
    nextY[3] = 190;   
  }
  if (nextBlock == "Z") {
    nextX[0] = 435;
    nextX[1] = 415;
    nextX[2] = 435;
    nextX[3] = 455;
    nextY[0] = 190;
    nextY[1] = 190;
    nextY[2] = 210;
    nextY[3] = 210;   
  }
  if (nextBlock == "O") {
    nextX[0] = 425;
    nextX[1] = 425;
    nextX[2] = 445;
    nextX[3] = 445;
    nextY[0] = 210;
    nextY[1] = 190;
    nextY[2] = 210;
    nextY[3] = 190;   
  }
  for (int i = 0; i < 4; i++) {
    square(nextX[i],nextY[i],20);
  }
  if (nextBlock == "T") {
    nextX[0] = 415;
    nextX[1] = 435;
    nextX[2] = 435;
    nextX[3] = 455;
    nextY[0] = 190;
    nextY[1] = 210;
    nextY[2] = 190;
    nextY[3] = 190;   
  }
  if (nextBlock == "I") {
    nextX[0] = 405;
    nextX[1] = 425;
    nextX[2] = 445;
    nextX[3] = 465;
    nextY[0] = 200;
    nextY[1] = 200;
    nextY[2] = 200;
    nextY[3] = 200;   
  }
  if (nextBlock == "L") {
    nextX[0] = 435;
    nextX[1] = 455;
    nextX[2] = 415;
    nextX[3] = 455;
    nextY[0] = 210;
    nextY[1] = 210;
    nextY[2] = 210;
    nextY[3] = 190;   
  }
  if (nextBlock == "J") {
    nextX[0] = 435;
    nextX[1] = 415;
    nextX[2] = 415;
    nextX[3] = 455;
    nextY[0] = 210;
    nextY[1] = 190;
    nextY[2] = 210;
    nextY[3] = 210;   
  }
  if (nextBlock == "S") {
    nextX[0] = 435;
    nextX[1] = 415;
    nextX[2] = 435;
    nextX[3] = 455;
    nextY[0] = 190;
    nextY[1] = 210;
    nextY[2] = 210;
    nextY[3] = 190;   
  }
  if (nextBlock == "Z") {
    nextX[0] = 435;
    nextX[1] = 415;
    nextX[2] = 435;
    nextX[3] = 455;
    nextY[0] = 190;
    nextY[1] = 190;
    nextY[2] = 210;
    nextY[3] = 210;   
  }
  if (nextBlock == "O") {
    nextX[0] = 425;
    nextX[1] = 425;
    nextX[2] = 445;
    nextX[3] = 445;
    nextY[0] = 210;
    nextY[1] = 190;
    nextY[2] = 210;
    nextY[3] = 190;   
  }
  for (int i = 0; i < 4; i++) {
    square(nextX[i],nextY[i],20);
  }
  if (nextBlock2 == "T") {
    nextX[0] = 415;
    nextX[1] = 435;
    nextX[2] = 435;
    nextX[3] = 455;
    nextY[0] = 290;
    nextY[1] = 310;
    nextY[2] = 290;
    nextY[3] = 290;   
  }
  if (nextBlock2 == "I") {
    nextX[0] = 405;
    nextX[1] = 425;
    nextX[2] = 445;
    nextX[3] = 465;
    nextY[0] = 300;
    nextY[1] = 300;
    nextY[2] = 300;
    nextY[3] = 300;   
  }
  if (nextBlock2 == "L") {
    nextX[0] = 435;
    nextX[1] = 455;
    nextX[2] = 415;
    nextX[3] = 455;
    nextY[0] = 310;
    nextY[1] = 310;
    nextY[2] = 310;
    nextY[3] = 290;   
  }
  if (nextBlock2 == "J") {
    nextX[0] = 435;
    nextX[1] = 415;
    nextX[2] = 415;
    nextX[3] = 455;
    nextY[0] = 310;
    nextY[1] = 290;
    nextY[2] = 310;
    nextY[3] = 310;   
  }
  if (nextBlock2 == "S") {
    nextX[0] = 435;
    nextX[1] = 415;
    nextX[2] = 435;
    nextX[3] = 455;
    nextY[0] = 290;
    nextY[1] = 310;
    nextY[2] = 310;
    nextY[3] = 290;   
  }
  if (nextBlock2 == "Z") {
    nextX[0] = 435;
    nextX[1] = 415;
    nextX[2] = 435;
    nextX[3] = 455;
    nextY[0] = 290;
    nextY[1] = 290;
    nextY[2] = 310;
    nextY[3] = 310;   
  }
  if (nextBlock2 == "O") {
    nextX[0] = 425;
    nextX[1] = 425;
    nextX[2] = 445;
    nextX[3] = 445;
    nextY[0] = 310;
    nextY[1] = 290;
    nextY[2] = 310;
    nextY[3] = 290;   
  }
  for (int i = 0; i < 4; i++) {
    square(nextX[i],nextY[i],20);
  }
if (nextBlock3 == "T") {
    nextX[0] = 415;
    nextX[1] = 435;
    nextX[2] = 435;
    nextX[3] = 455;
    nextY[0] = 390;
    nextY[1] = 410;
    nextY[2] = 390;
    nextY[3] = 390;   
  }
  if (nextBlock3 == "I") {
    nextX[0] = 405;
    nextX[1] = 425;
    nextX[2] = 445;
    nextX[3] = 465;
    nextY[0] = 400;
    nextY[1] = 400;
    nextY[2] = 400;
    nextY[3] = 400;   
  }
  if (nextBlock3 == "L") {
    nextX[0] = 435;
    nextX[1] = 455;
    nextX[2] = 415;
    nextX[3] = 455;
    nextY[0] = 410;
    nextY[1] = 410;
    nextY[2] = 410;
    nextY[3] = 390;   
  }
  if (nextBlock3 == "J") {
    nextX[0] = 435;
    nextX[1] = 415;
    nextX[2] = 415;
    nextX[3] = 455;
    nextY[0] = 410;
    nextY[1] = 390;
    nextY[2] = 410;
    nextY[3] = 410;   
  }
  if (nextBlock3 == "S") {
    nextX[0] = 435;
    nextX[1] = 415;
    nextX[2] = 435;
    nextX[3] = 455;
    nextY[0] = 390;
    nextY[1] = 410;
    nextY[2] = 410;
    nextY[3] = 390;   
  }
  if (nextBlock3 == "Z") {
    nextX[0] = 435;
    nextX[1] = 415;
    nextX[2] = 435;
    nextX[3] = 455;
    nextY[0] = 390;
    nextY[1] = 390;
    nextY[2] = 410;
    nextY[3] = 410;   
  }
  if (nextBlock3 == "O") {
    nextX[0] = 425;
    nextX[1] = 425;
    nextX[2] = 445;
    nextX[3] = 445;
    nextY[0] = 410;
    nextY[1] = 390;
    nextY[2] = 410;
    nextY[3] = 390;   
  }
  for (int i = 0; i < 4; i++) {
    square(nextX[i],nextY[i],20);
  }
}
