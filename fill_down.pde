//function to move down dots after dots are removed
public void fillDown(int rows,int columns) {
  for (int l = 0; l < rows; l++) {
    for (int k = columns-1; k > 0; k--) {
      if (dot[l][k].type == 100) {
        dot[l][k].type = dot[l][k-1].type;
        dot[l][k-1].type = 100;
      }
    }
  }
  for (int l = 0; l < rows; l++) {
    for (int k = columns-1; k > 0; k--) {
      if (dot[k][l].type == 100) {
        dot[k][l].type = dot[k-1][l].type;
        dot[k-1][l].type = 100;
      }
    }
  }
}

