public void bonusLevelRun() {
  if (millis()-timer <= bonusLevel.levelTime) {
    println(millis()-timer); 
    scoreDisplay(); 
    if (mousePressed && counter == 0) {
      println("ping1");
      counter = 1;
      mouseStartY = mouseY-100;
      mouseStartX = mouseX;
      theDot = dot[mouseStartX/bonusLevel.diameter][mouseStartY/bonusLevel.diameter];
      println(mouseStartX/bonusLevel.diameter + " " + mouseStartY/bonusLevel.diameter);
      if (checker(mouseStartX/bonusLevel.diameter, mouseStartY/bonusLevel.diameter, theDot.type, 50, 50) == true) {
        removeDots(mouseStartX/bonusLevel.diameter, mouseStartY/bonusLevel.diameter, theDot.type, 50, 50);
        score = score + int(pow(numberDestroyed, 2)/3);
        bonusLevel.levelScore = bonusLevel.levelScore + int(pow(numberDestroyed, 2)/3);
        numberDestroyed = 0;
      }
      else {
        bonusLevel.levelScore-=100; 
        score = score - 100;
      }
      println("done " + counter);
    }
    if (mousePressed != true) {
      counter = 0;
    }
    fillDown(50, 50); 
    for (int l = 0; l < bonusLevel.numberOfRows; l++) {
      for (int k = 0; k < bonusLevel.numberOfRows; k++) {
        if (dot[l][k].type == 0) {
          fill(type0);
          //fill(random(256),random(256),random(256));
        }
        if (dot[l][k].type == 1) {
          fill(type1);
          //fill(random(256),random(256),random(256));
        }
        if (dot[l][k].type == 2) {
          fill(type2);
          //fill(random(256),random(256),random(256));
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
        ellipse(((dot[l][k].x)-bonusLevel.radius), ((dot[l][k].y)-bonusLevel.radius), bonusLevel.diameter, bonusLevel.diameter);
      }
    }
  }
  else {
    bonusLevelOver();
  }
}
public void bonusLevelOver() {
  background(0);
  fill(0, 255, 0);
  rect(width/2-100, height/2-200, 200, 100); 
  fill(255);
  textFont(f, 16); 
  textAlign(CENTER);
  text("Yay! You got some points!" + "\n" + "You got " + bonusLevel.levelScore + " points!", width/2, height/2);
  textFont(f); 
  textAlign(CENTER);
  text("Next Level", width/2, height/2-150);
  if (mousePressed && mouseX < (width/2-100)+200 && mouseX > width/2-100 && mouseY > height/2-200 && mouseY < (height/2-200)+100) {
    whichScreen = 0;
    regularLevel.level++;
    if (regularLevel.level%2 == 0 && regularLevel.numberOfColors <= 11) {
      regularLevel.numberOfColors++;
    }
    regularLevel.numberOfRows = regularLevel.numberOfRows + 2;
    regularLevel.calculateVariables();
    karma.karmaLevel = 0;
    karma.bonusLevelCheck = false;
  }
}
public void bonusLevelSetup() {
  timer = millis();
  bonusLevel.calculateVariables(); 
  for (int l = 0; l < bonusLevel.numberOfRows; l++) {
    bonusLevel.startingPositionY = 100;
    for (int k = 0; k < bonusLevel.numberOfRows; k++) {
      bonusLevel.startingPositionY = bonusLevel.startingPositionY + bonusLevel.diameter;
      dot[l][k] = new dot();
      dot[l][k].x = bonusLevel.startingPositionX;
      dot[l][k].y = bonusLevel.startingPositionY;
      dot[l][k].type = int(random(bonusLevel.numberOfColors));
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
      ellipse(((dot[l][k].x)-bonusLevel.radius), ((dot[l][k].y)-bonusLevel.radius), bonusLevel.diameter, bonusLevel.diameter);
    }
    bonusLevel.startingPositionX = bonusLevel.startingPositionX + bonusLevel.diameter;
  }
}

