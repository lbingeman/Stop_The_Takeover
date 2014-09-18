//function to display score
void scoreDisplay() {
  //fill score box pink
  fill(255, 0, 255);
  //draw score box
  rect(0, 0, 100, 30);
  //set text to white
  fill(0);
  //display the score
  textFont(f,10);
  textAlign(LEFT);
  text("Score: " + score, 10, 20); 
}
