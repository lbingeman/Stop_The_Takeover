//FUNCTION TO REMOVE DOTS OF SAME COLOUR AS DOT THAT WAS CLICKED
public void removeDots(int a, int b, int theType, int rows, int columns) {
  numberDestroyed++; //increase numberDestroyed by 1 everytime function is called
  if (theType != 100) { //if dot is not black
    dot[a][b].type = 100; //set dot in question to black
    if (a != 0) { //if statement to ensure no array out of bounds errors
      if (dot[a-1][b].type == theType) {
        //checking if dot to left of dot in question if same color
        println("left"); 
        removeDots(a-1, b, theType,rows,columns); //run removeDots function to see if any dots of same colour is adjacenet to dot of same colour
      }
    }
    if (a != rows -1) { //if statement to ensure no array out of bounds errors
      if (dot[a+1][b].type == theType) {
        //checking if dot to right of dot in question if same color
        println("right");
        removeDots(a+1, b, theType,rows,columns);//run removeDots function to see if any dots of same colour is adjacenet to dot of same colour
      }
    }
    if (b != 0) { //if statement to ensure no array out of bounds errors  
      if (dot[a][b-1].type == theType) {
        //checking if dot above dot in question if same color
        println("up");
        removeDots(a, b-1, theType,rows,columns);//run removeDots function to see if any dots of same colour is adjacenet to dot of same colour
      }
    }
    if (b!= columns -1) { //if statement to ensure no array out of bounds errors
      if (dot[a][b+1].type == theType) {
        //checking if dot below dot in question if same color
        println("down");
        removeDots(a, b+1, theType,rows,columns);//run removeDots function to see if any dots of same colour is adjacenet to dot of same colour
      }
    }
  }
}


