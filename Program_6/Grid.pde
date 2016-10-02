class Grid {
  private PImage[][] cells;
  private int lastRow;
  private int cellWidth, cellHeight;
  private int playerCol;

  /*
    Create a new Grid with the specified number of rows and columns.
   The cells are all initially "empty" which is represented by null.
   */
  Grid(int rows, int cols, int width, int height) {
    cells = new PImage[rows][cols];
    lastRow = rows-1;
    cellWidth = width/cols;
    cellHeight = height/rows;
  }

  // return the number of rows in this Grid
  int numRows() { 
    return cells.length;
  }

  // return the number of columns in this Grid
  int numCols() { 
    return cells[0].length;
  }

  /*
    Make some new thing appear in the top (first) row. 
   To make that position in the row be empty, just pass in null for img.
   For methods isGood() and isBad() to work correctly img should be the global variable good or bad.
   */
  void newStuff(int col, PImage img) {
    cells[0][col] = img;
  }

  /*
    Shift everything (excpet the player) down one column leaving the top column empty (all null).
   */
  void scrollDown() {
    for (int i = cells.length-1; i > 0; i--) {
      for (int j = 0; j <cells[i].length; j++) {
        cells[i][j] = cells[i-1][j];
      }
    }
    // clear the top row
    for (int j = 0; j < cells[0].length; j++) {
      cells[0][j] = null;
    }
  }

  // jump the player to a specified col
  void setPlayer(int col) {
    col = constrain(col, 0, cells[0].length); // make sure it is a valid col
    playerCol = col;
  }

  // return true if the specified cell contains an image of a "thing"
  boolean contains(int row, int col, PImage thing) {
    return cells[row][col] == thing;
  }

  // remove any image at the specified grid location
  void clear(int row, int col) {
    cells[row][col] = null;
  }

  /*
    Draw the grid.
   */
  void draw() {
    for (int row = 0; row < cells.length; row++) {
      for (int col = 0; col < cells[row].length; col++) {
        if (cells[row][col] != null) {
          image(cells[row][col], col*cellWidth, row*cellHeight, cellWidth, cellHeight);
        }
      }
    }
    image(player, playerCol*cellWidth, lastRow*cellHeight, cellWidth, cellHeight);
    // draw a line at the bottom of the grid that separates it from the score at the bottom
    line(0, cells.length*cellHeight, width, cells.length*cellHeight);
  }
}

