public void instructionDraw() {
  background(255, 0, 255);
  fill(0);
  rect(146, 463, 200, 65, 7); 
  fill(255);
  textFont(f, 32); 
  textAlign(CENTER);
  text("Play", 246, 500);
  textFont(f,32);
  textAlign(CENTER);
  text("Instructions" + "\n" + "You click the dots." + "\n" + "\n" + "Have fun", 242,65); 
  
   if (mousePressed) {
    if (mouseX > 146 && mouseX < 346) {
      if (mouseY > 463 && mouseY < (463+65)) {
        introPress = 1;
      }
    }
  }
  if (mousePressed == false && introPress == 1) {
    introPress = 0;
    whichScreen = 0;
  }
}

