public void gameOverDraw() {
  background(0);
  fill(0, 255, 0);
  rect(width/2-100, height/2-200, 200, 100); 
  fill(255);
  textFont(f, 16); 
  textAlign(CENTER);
  karma.calculateMinimumKarma(); 
  if (karma.karmaLevel < karma.minimumKarmaLevel) {
    text("Haha! I, the computer, am the ultimate ruler..." + "\n" + "fear me puny humans" + "\n" + "Score: " + score, width/2, height/2);
    textFont(f); 
    textAlign(CENTER);
    text("Play again", width/2, height/2-150);
  }
  else {
    text("That was okay.." + "\n" + "You can move on to the next level" + "\n" + "You lost " + regularLevel.bonusScore + " points due to left over dots", width/2, height/2);
    textFont(f); 
    textAlign(CENTER);
    text("Next Level", width/2, height/2-150);
  }
  if (mousePressed) {
    if (mouseX > (width/2 - 100) && mouseX < (width/2 + 100)) {
      if (mouseY > (height/2 - 200) && mouseY < (height/2 - 100)) {
        introPress = 1;
        println("I've run");
      }
    }
  }
  if (mousePressed == false && introPress == 1) {
    introPress = 0;
    whichScreen = 0;
    println("whichScreen");
    if (karma.karmaLevel < karma.minimumKarmaLevel) {
      regularLevel.level = 1;
      regularLevel.levelScore = 0;
      regularLevel.numberOfColors = 2; 
      score = 0; 
      regularLevel.numberOfRows = 6;
      regularLevel.calculateVariables();
      karma.karmaLevel = 0;
      karma.bonusLevelCheck = false;
    }
    else {
      if (karma.bonusLevelCheck == true ) {
        whichScreen = 4;
      }
      else {
        regularLevel.level++;
        if (regularLevel.level%2 == 0 && regularLevel.numberOfColors <= 11) {
          regularLevel.numberOfColors++;
        }
        regularLevel.levelScore = 0;
        regularLevel.numberOfRows = regularLevel.numberOfRows + 2;
        regularLevel.calculateVariables();
        karma.karmaLevel = 0;
        karma.bonusLevelCheck = false;
      }
    }
  }
}

