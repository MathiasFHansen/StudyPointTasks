/**
 * Array 2D. 
 * 
 * Demonstrates the syntax for creating a two-dimensional (2D) array.
 * Values in a 2D array are accessed through two index values.  
 * 2D arrays are useful for storing images. In this example, each dot 
 * is colored in relation to its distance from the center of the image. 
 */
 
import java.util.Random;

Game game = new Game(25, 25, 5, 5, 5, 100);
PFont font;

public void settings() {
  size(1001, 1001);
}

void setup()
{
  frameRate(10);
  font = createFont("Arial", 16, true);
  textFont(font, 16);
}

void keyReleased()
{
  if (key == CODED)
  {
    game.onKeyTwoReleased(keyCode);
  }
  game.onKeyReleased(key);
}

void keyPressed()
{
  if (key == CODED)
  {
    game.onKeyTwoPressed(keyCode);
  }
  game.onKeyPressed(key);
}

void draw()
{
  game.update();
  background(0); //Black
  // This embedded loop skips over values in the arrays based on
  // the spacer variable, so there are more values in the array
  // than are drawn here. Change the value of the spacer variable
  // to change the density of the points
  int[][] board = game.getBoard();
  for (int y = 0; y < game.getHeight(); y++)
  {
    for (int x = 0; x < game.getWidth(); x++)
    {
      if(board[x][y] == 0)
      {
        fill(0,0,0);
      }
      else if(board[x][y] == 1)
      {
        fill(0,0,255);
      }
      else if(board[x][y] == 2)
      {
        fill(255,0,0);
      }
      else if(board[x][y] == 3)
      {
        fill(0,255,0);
      }
      else if(board[x][y] == 4)
      {  
        fill(255,255,0);
      }
    
      stroke(100,100,100);
      rect(x*40, y*40, 40, 40);
    }
  }
  fill(255);
  text("Lifes: "+game.getPlayerLife(), width/5, height/5);
  text("Lifes: "+game.getPlayer2Life(), width/5*4, height/5);
  if(game.playerLife < 1)
  { 
    game.playerLife = 0;
    textFont(font, 28);
    text("Player 2 won", width/2, height/2);
    text("Press \"Enter\" to quit", (width/2) - (width/8), ((height/2)) + 20);
    game.setPlayerHasWon(true);
      if(game.quitGame())
      {
        exit();
      }
  }
  if(game.player2Life < 1)
  {
    
    game.player2Life = 0;
    textFont(font, 28);
    text("player 1 won", width/2, height/3*2);
    text("Press \"Enter\" to quit", (width/2) - (width/8), ((height/2)) + 20);
    game.setPlayerHasWon(true);
      if(game.quitGame())
      {
        exit();
      }
  }
  
}
