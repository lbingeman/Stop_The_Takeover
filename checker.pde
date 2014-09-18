//function for checking if a dot has any dots adjacent to it in same colour
public boolean checker(int a, int b, int theType, int rows, int columns) {
  int counterCheck = 0;//declare local variable for # of blocks of same colour adjacent
  if (a != 0) { //if statement to ensure no array out of bounds errors
    if (dot[a-1][b].type == theType) {
      //checking if dot to left of dot in question if same color
      println("left");
      counterCheck++;//increase counterCheck by one
    }
  }
  if (a != rows -1) { //if statement to ensure no array out of bounds errors
    if (dot[a+1][b].type == theType) {
      //checking if dot to right of dot in question if same color
      println("right");
      counterCheck++;//increase counterCheck by one
    }
  }
  if (b != 0) {  //if statement to ensure no array out of bounds errors
    if (dot[a][b-1].type == theType) {
      //checking if dot above dot in question if same color
      println("up");
      counterCheck++;//increase counterCheck by one
    }
  }
  if (b!= columns -1) { //if statement to ensure no array out of bounds errors
    if (dot[a][b+1].type == theType) {
      //checking if dot below dot in question if same color
      println("down");
      counterCheck++;//increase counterCheck by one
    }
  }
  if(counterCheck >= 1){ //if there is atleast one dots adjacenet
   return true; 
  }
  else{ //if there are zero dots adjacent
    println("checker == false");
    return false; 
  }
}

