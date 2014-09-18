public void startGame(){
  println("The intro");  
  for (int l = 0; l < regularLevel.numberOfRows; l++) {
    regularLevel.startingPositionY = 100;
    for (int k = 0; k < regularLevel.numberOfColumns; k++) {
      regularLevel.startingPositionY = regularLevel.startingPositionY + regularLevel.diameter;
      dot[l][k] = new dot();
      dot[l][k].x = regularLevel.startingPositionX;
      dot[l][k].y = regularLevel.startingPositionY;
      dot[l][k].type = int(random(regularLevel.numberOfColors));
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
      ellipse(((dot[l][k].x)-regularLevel.radius), ((dot[l][k].y)-regularLevel.radius), regularLevel.diameter, regularLevel.diameter);
    }
    regularLevel.startingPositionX = regularLevel.startingPositionX + regularLevel.diameter;
  }
}
