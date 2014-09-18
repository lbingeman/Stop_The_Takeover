//Laura Bingeman
// Version 1.6

//MAIN PROGRAM

//Declaration of  Variables
//Varying Level && Score Variables
int numberDestroyed = 0; //records the number of bricks destroyed
int score = 0; //total score
int mouseStartX;//x position of click
int mouseStartY;// y position of click
//colours for individual dots
color type0 = color(255, 0, 0);//red
color type3 = color(55, 175, 9);//green
color type2 = color(0, 0, 255);//blue
color type1 = color(250, 130, 0);//orange
color type4 = color(255, 255, 0);//yellow 
color type5 = color(229, 185, 229);//pink
color type6 = color(122, 5, 250);//purple
color type7 = color(0, 100, 100);//turquois
color type8 = color(255, 0, 255);//bright pink
color type9 = color(255, 255, 255);//white
color type10 = color(0, 255, 255);//bright blue
//dots Variables
karma karma = new karma(); 
dot[][] dot = new dot[1000][1000]; //2d of array [row#][column#]
dot theDot = new dot(); //declaring the dot that is selected
level regularLevel = new level(); 
level bonusLevel = new level(); 
int type; // the color of the dot 
int x; //x position of dot
int y; //y position of dot
//GUI Interface/lag variables
int whichScreen = -1; //variable for what screen program is on
int introPress = 0;  //variable to ensure dots are not destroyed when a button is pressed in intro screen
int counter = 0; //counter to ensure destroy brick function is only run once per mouse click 
//Font
PFont f;//text font
PFont p;//title font
//Timer
int timer; 

//Setup loop
public void setup() {
  frameRate(10);
  size(500, 600);
  f = createFont("Arial", 40, true); 
  p = createFont("BrushScriptStd", 40, true);
  regularLevel.level = 1;
  regularLevel.numberOfRows = 6; 
  regularLevel.numberOfColors = 2; 
  regularLevel.calculateVariables();
  bonusLevel.level = 1;
  bonusLevel.numberOfRows = 50; 
  bonusLevel.numberOfColors = 3; 
  bonusLevel.levelTime = 20000;
  bonusLevel.calculateVariables();
}

//Draw loop
public void draw() {
  background(0); 
  if (whichScreen == -1) {
    intro(); //draw the introduction screen
  }
  if (whichScreen == 0) {
    println("introScreen");
    startGame(); //run the startup function 
    whichScreen = 1; //start game
  }
  if (whichScreen == 1) {
    game(); //game-play
  }
  if (whichScreen == 2) {
    gameOverDraw(); //draw level over options (new game or continue to next level)
  }
  if (whichScreen == 3) {
    instructionDraw();// draw instructions
  }
  if (whichScreen == 4){
    bonusLevelSetup(); 
    whichScreen = 5; 
  }
  if(whichScreen == 5){
   bonusLevelRun(); 
  }
}


