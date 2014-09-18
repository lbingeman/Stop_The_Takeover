//class for each individual dot
class dot {
  int x; //x position of dot
  int y; //y position of dot
  int type; //color of dot
  int l; //row position
  int k; //column position
  dot() {
    //initialize variables
    x = 0;
    y = 0; 
    type = 0;
    l = 0;
    k = 0;
  }
}

class karma {
  int karmaLevel;
  int minimumKarmaLevel;
  boolean bonusLevelCheck;
  karma() {
    karmaLevel = 0;
    bonusLevelCheck = false;
    minimumKarmaLevel = 10;
  }
  public void checkKarma() {
    if (karmaLevel == 260) {
      bonusLevelCheck = true;
    }
    else if (karmaLevel <260) {
      bonusLevelCheck = false;
    }
  }
  public void calculateMinimumKarma() {
    if (regularLevel.level < 5) {
      minimumKarmaLevel = regularLevel.level*10;
    } 
    else {
      minimumKarmaLevel = 50;
    }
  }
  public void drawKarma() {
    fill(255, 255, 255);
    rect(210, 15, 260, 20, 10, 0, 0, 10); 
    fill(255, 0, 0); 
    rect(470-karmaLevel, 15, karmaLevel, 20, 10, 0, 0, 10);
  } 
  public void changeKarma(int numberOfDotsDestroyed) {
    if (karmaLevel < 260) {
      if (numberOfDotsDestroyed > 3) {
        karmaLevel+= 10;
      }
      else {
        karmaLevel-= 10;
      }
    }
    checkKarma();
  }
}

class level {
  int level;
  int levelScore;
  int numberOfRows;
  int numberOfColumns;
  int numberOfColors;
  int numberOfDots; 
  int startingPositionX;
  int startingPositionY;
  int diameter;
  int radius;
  int levelTime;
  int bonusScore;
  int levelMinScore;
  level() {
    levelMinScore = 0; 
    level = 0; 
    levelTime = 0; 
    levelScore = 0; 
    numberOfRows = 0;
    numberOfColumns = 0;
    numberOfColors = 0;
    numberOfDots = 0; 
    startingPositionX = 0;
    startingPositionY = 0; 
    diameter = 0;
    radius = 0;
    bonusScore = 0;
  } 
  public void calculateVariables() {
    levelMinScore = 100+(level-1)*40; 
    numberOfColumns = numberOfRows;
    startingPositionX = 500/numberOfRows;
    startingPositionY = 100;
    diameter = 500/numberOfRows;//diameter of each dot
    radius = diameter/2; //radius of each dot
    numberOfDots = numberOfRows*numberOfColumns;
    bonusScore = 0;
    levelScore = 0;
  }
  public void destroyDots() {
    numberOfDots--;
  }
  public void bonusPoints() { 
    for (int l = 0; l < numberOfRows; l++) {
      for (int k = 0; k < numberOfColumns; k++) {
        if (dot[l][k].type == 100) {
          destroyDots();
        }
      }
    }
    bonusScore = 5*numberOfDots;
    levelScore = levelScore-bonusScore;
  }
}

