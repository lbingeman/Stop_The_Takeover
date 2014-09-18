public boolean canIStillGo() {
  int thisSquareCanGo = 0;
  for (int l = 0; l < regularLevel.numberOfRows; l++) {
    for (int k = 0; k < regularLevel.numberOfColumns; k++) {
      if (dot[l][k].type != 100 && checker(l, k, dot[l][k].type,regularLevel.numberOfRows,regularLevel.numberOfColumns) == true) {
        thisSquareCanGo++;
      }
    }
  }
  if (thisSquareCanGo <= 0) {
    return false;
  } 
  else {
    return true;
  }
}

