public void intro() {
  background(255, 0, 0);
  fill(0);
  rect(30, 252, 200, 65,7); 
  fill(255);
  textFont(p,64);
  textAlign(CENTER);
  text("Stop the Takeover", 241,111);
  //Play button
  textFont(f,32); 
  textAlign(CENTER);
  text("Play", 130, 300);
  //INtruction Button
  fill(0);
  rect((500-230), 252, 200, 65,7); 
  fill(255);
  textFont(f,32); 
  textAlign(CENTER);
  text("Instructions", 370, 300);
  textFont(f,12);
  text("version 1.5",50,550);
  
  if (mousePressed) {
    if (mouseX > 30 && mouseX < 230) {
      if (mouseY > 252 && mouseY < (252+65)) {
        introPress = 1;
      }
    }
    if (mouseX > 270 && mouseX < 470) {
      if (mouseY > 252 && mouseY < (252+65)) {
        introPress = 2;
      }
    }
  }
  if (mousePressed == false && introPress == 1) {
    introPress = 0;
    whichScreen = 0;
  }
  else if(mousePressed == false && introPress == 2){
    introPress = 0;
    whichScreen = 3; 
  } 
}

