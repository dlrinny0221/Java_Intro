/* The Hungry Squirrel GAME!!!!
 The hungry squirrel is gathering nuts to get him through the winter.
 There are four kinds of delicious nuts that will get her and her babies through.
 There are bombs which will take away some of her food.
 If a bomb is hit, five points are taken.
 The nuts vary in points, nut one gives one point, two gives two and so on. 
 Help this little lady stay happy, warm and fed through the cold winter.
 
 This program was created by Yunyi Ding and Caitlin Campodonico.
 */
Grid theGrid;
PImage player, good, good1, good2, good3, bad, gameOver, gameWin;
int playerCol, lastRow;
int scoreHeight;
int score;
int difficulty = 20; // a smaller number will make it harder - see the comment for the loop in draw
int myFrameRate = 5;
int game=0;
int LOSER=1, WINNER=2;

void setup() {
  size(500, 800);
  scoreHeight = 20;
  lastRow = 19;
  theGrid = new Grid(lastRow+1, 10, width, (height-scoreHeight));
  player = loadImage("11072043.png");
  good = loadImage("1294123868.png");
  good1= loadImage("5474697_175429095368_2.png");
  good2=loadImage("1.png");
  good3=loadImage("2.png");
  bad = loadImage("605785_123616026223_2.png");
  PFont font = createFont("Georgia", 20); 
  fill(0);
  textFont(font);
  textAlign(CENTER);  
  frameRate(myFrameRate);
  smooth();
  refresh();
}

/*
 Add some new "things" at the top of the scene then refresh the display.
 */
void draw() {
  if ((score+1)%10==0) {
    difficulty-=1;
  }
  if (difficulty<10) {
    difficulty=10;
  }

  if (frameCount % myFrameRate <=5) { // update the grid just once per second
    theGrid.scrollDown();
    // add some new stuff at the top
    for (int col = 0; col < theGrid.numCols(); col++) {
      int choice = int(random(difficulty));
      // 1 chance in difficulty it will be good, 1 in difficutly it will be bad, the rest get nothing
      if (choice == 0) {
        theGrid.newStuff(col, good);
      }
      else if (choice== 1) {
        theGrid.newStuff(col, good1);
      }
      else if (choice==2) {
        theGrid.newStuff(col, good2);
      }
      else if (choice==3) {
        theGrid.newStuff(col, good3);
      }
      else if (choice == 4) {
        theGrid.newStuff(col, bad);
      }

      else {
        theGrid.newStuff(col, null);
      }
    }
  }
  refresh();
  gameLW();
}
/*
 Refresh the display.
 */
void refresh() {
  theGrid.setPlayer(playerCol);
  background(151, 136, 240);
  noStroke();
  fill(186, 230, 242);
  rect(0, 0, 500, 500);
  fill(136,240,164);
  rect(0, 500, 500, 250);
  checkCollision();
  theGrid.draw();
  text("Score: " + score, width/2, height-2);
}
/*
 Use arrows keys to move the player position up and down.
 Modifies the global playerRow.
 */
void keyPressed() {
  if (key == CODED) { // tells us it was a "special" key
    if (keyCode == RIGHT) {
      playerCol++;
    } 
    else if (keyCode == LEFT) {
      playerCol--;
    }
  }
  playerCol = constrain(playerCol, 0, theGrid.numCols()-1);
  refresh();
}

/*
    Here is the game logic about what happens when the player collides with various "stuff".
 */
void checkCollision() {
  if (theGrid.contains(lastRow, playerCol, good)) {
    theGrid.clear(lastRow, playerCol);
    score++;
  }
  else if (theGrid.contains(lastRow, playerCol, good1)) {
    theGrid.clear(lastRow, playerCol);
    score+=2;
  }
  else if (theGrid.contains(lastRow, playerCol, good2)) {
    theGrid.clear(lastRow, playerCol);
    score+=3;
  } 
  else if (theGrid.contains(lastRow, playerCol, good3)) {
    theGrid.clear(lastRow, playerCol);
    score+=4;
  }
  else if (theGrid.contains(lastRow, playerCol, bad)) {
    theGrid.clear(lastRow, playerCol);
    score-=5;
  }
  println(score);
}

void gameLW() {
  if (score<=-50) {
    game= LOSER;
    background(0);
    fill(255, 0, 0);
    textSize(30);
    text("LOSER...", width/2, height/2);
    noLoop();
  }
  else if (score>=200) {
    game=WINNER;
    background(150, 204, 240);
    for (int i=0;i<=500;i++) {
      strokeWeight(5);
      fill(224, 150, 240);
      point(random(width), random(height));
    }
    textSize(35);
    fill(174, 124, 245);
    text("WINNER!!!", width/2, height/2);
    noLoop();
  }
}

