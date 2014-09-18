public void game() {
  scoreDisplay(); 
  karma.drawKarma(); 
  if (mousePressed && counter == 0) {
    println("ping1");
    counter = 1;
    mouseStartY = mouseY-100;
    mouseStartX = mouseX;
    theDot = dot[mouseStartX/regularLevel.diameter][mouseStartY/regularLevel.diameter];
    println(mouseStartX/regularLevel.diameter + " " + mouseStartY/regularLevel.diameter);
    if (checker(mouseStartX/regularLevel.diameter, mouseStartY/regularLevel.diameter, theDot.type, regularLevel.numberOfRows, regularLevel.numberOfColumns) == true) {
      removeDots(mouseStartX/regularLevel.diameter, mouseStartY/regularLevel.diameter, theDot.type, regularLevel.numberOfRows, regularLevel.numberOfColumns);
      karma.changeKarma(numberDestroyed); 
      score = score + int(pow(numberDestroyed, 2)/3);
      regularLevel.levelScore = regularLevel.levelScore + int(pow(numberDestroyed, 2)/3);
      numberDestroyed = 0;
    }
    else {
      score = score - 100;
      regularLevel.levelScore-=100; 
    }
    println("done " + counter);
  }
  if (mousePressed != true) {
    counter = 0;
  }
  fillDown(regularLevel.numberOfRows, regularLevel.numberOfColumns); 
  for (int l = 0; l < regularLevel.numberOfRows; l++) {
    for (int k = 0; k < regularLevel.numberOfColumns; k++) {
      if (dot[l][k].type == 0) {
        fill(type0);
      }
      if (dot[l][k].type == 1) {
        fill(type1);
      }
      if (dot[l][k].type == 2) {
        fill(type2);
      }
      if (dot[l][k].type == 3) {
        fill(type3);
      }
      if (dot[l][k].type == 4) {
        fill(type4);
      }
      if (dot[l][k].type == 5) {
        fill(type5);
      }
      if (dot[l][k].type == 6) {
        fill(type6);
      }
      if (dot[l][k].type == 7) {
        fill(type7);
      }
      if (dot[l][k].type == 8) {
        fill(type8);
      }
      if (dot[l][k].type == 9) {
        fill(type9);
      }
      if (dot[l][k].type == 10) {
        fill(type10);
      }
      if (dot[l][k].type == 100) {
        fill(0, 0, 0);
      }
      ellipse(((dot[l][k].x)-regularLevel.radius), ((dot[l][k].y)-regularLevel.radius), regularLevel.diameter, regularLevel.diameter);
    }
  }
  if (canIStillGo() == false) {
    println("Haha");
    regularLevel.bonusPoints();
    whichScreen = 2;
  }
  if(karma.karmaLevel < 0){
    whichScreen = 2;  
  }
}

