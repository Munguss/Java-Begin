Cell[][] board; //object
int cols=3; //number of colums
int rows=3; //number of rows
int player=0; //player
int win=0; //used to win or draw
int game=0; //for game screens
int full=0; //used as determining for draw

void setup()
{
size(400,400);
smooth();
board=new Cell[cols][rows];
for(int i=0;i<cols;i++)
{
  for(int j=0;j<rows;j++)
  {
    board[i][j] = new Cell(width/3*i,height/3*j,width/3,height/3);
  }
}
}
//Finally in background and draw over gameplay is written every Screen is calles from here
//Game == 0 is starting screen
//Game == 1 is screen with 9 Cells
void draw()
  {
    background(255);
    if(game==0)
    {
      fill(0);
      textSize(20);
      text("Press Enter to Start",width/2-width/4,height/2);
    }
    
    if(game==1)
    {
      checkGame();
      for(int i =0;i<cols;i++)
      {
        for(int j=0;j<rows;j++)
        {
          board[i][j].display();
        }
      }
    } 
  }

//there blocks mouse press and keyboard press
//For keyboard only use "ENTER"
//And mouse pressed is used for choosing the cell you wish to select for "0's & X's"
void mousePressed()
  {
    if(game == 1)
    {
      if(win==0)
      {
        for(int i=0;i<cols;i++)
        {
          for(int j=0;j<rows ;j++)
          {
            board[i][j].click(mouseX,mouseY);
          }
        }
      }
    }
  }
  
void keyPressed()
  {
    if(game==0)
    {
      if(key==ENTER)
      {
        game=1; //Play screen
        full=9;
      }
    }
    else if(game==1 && win==0 && full==0)
    {
      if(key == ENTER)
      {
        game=0; //Start again screen
        for(int i=0;i<cols;i++)
        {
          for(int j=0;j<rows;j++)
          {
            board[i][j].clean();
            win=0;
            full=9;
          }
        }
      }
    }
    else if(game ==1 &&(win==1||win==2))
    {
      if(key==ENTER)
      {
        game=0; //Start again screen
        for(int i=0;i<cols;i++)
        {
          for(int j=0;j<rows;j++)
          {
            board[i][j].clean();
            win=0;
            full=9;
          }
        }
      }
    }
  }
  
// This function represents the condition check determining witch player won or the game ended as a draw
  void checkGame() {
  int row=0;
//Let's check for vertical and horizontal condition
  for (int col=0; col<cols; col++)
  {
    if (board[col][row].checkState()==1&&board[col][row+1].checkState()==1&&board[col][row+2].checkState()==1)
    {
      win=1; //Vertical 0 win
    } 
    else if (board[row][col].checkState()==1&&board[row+1][col].checkState()==1&&board[row+2][col].checkState()==1)
    {
      win=1; // Horizontal 0 win
    } 
    else if (board[col][row].checkState()==2&&board[col][row+1].checkState()==2&&board[col][row+2].checkState()==2)
    {
      win=2; //Vertical X win
    } 
    else if (board[row][col].checkState()==2&&board[row+1][col].checkState()==2&&board[row+2][col].checkState()==2)
    {
      win=2; // Horizontal X win
    }
  }

//Checking the diagonals
  if (board[row][row].checkState()==1&&board[row+1][row+1].checkState()==1&&board[row+2][row+2].checkState()==1)
  {
    //Diagonal 0 win
    win=1;
  } 
  else if (board[row][row].checkState()==1&&board[row+1][row+1].checkState()==2&&board[row+2][row+2].checkState()==2)
  {
    //Diagonal X win
    win=2;
  } 
  else if (board[0][row+2].checkState() ==1 && board[1][row+1].checkState() ==1 && board[2][row+2].checkState() ==1)
  {
    //0 Win
    win=1;
  } 
  else if (board[0][row+2].checkState() ==2 && board[1][row+1].checkState() ==2 && board[2][row+2].checkState() ==2)
  {
    //X Win
    win=2;
  }
  
//Printing the winner
  fill(255);
  textSize(20);
  
  if(win==1){
    fill(0);
    text("Player 1 \n won",board[1][1].checkX()+40,board[1][1].checkY()+50);
  }
  else if(win==2){
    fill(0);
    text("Player 2 \n won",board[1][1].checkX()+40,board[1][1].checkY()+50);
  }
    
  if(win==1||win==2)
  {
    fill(0);
    textSize(35);
    text("Press Enter to Start", width/2-width/2+23,height/2-height/6-20);
  }
  
  if(win==0 && full==0)
  {
    fill(0);
    textSize(35);
    text("Press Enter to Start",width/2-width/2+23,height/2-height/6-20);
  }  
}

// This "class Cell" code represent the cell behaviour "9 Cells"
class Cell {
  int x;
  int y;
  int w;
  int h;
  int state;

  Cell(int tx, int ty, int tw, int th)
  {
    x=tx;
    y=ty;
    w=tw;
    h=th;
  }

  void click(int tx, int ty) {
    int mx=tx;
    int my=ty;
    if (mx>x&&mx<x+w&&my>y&&my<y+h)
    {
      if (player ==0 && state==0)
      {
        state=1;
        full=-1;
        player=1;
      } else if (player==1 &&state==0) {
        state=2;
        full=-1;
        player=0;
      }
    }
  }

  void clean() {
    state=0;
  }
  int checkState() {
    return state;
  }
  int checkX()
  {
    return x;
  }
  int checkY()
  {
    return y;
  }

  void display()
  {
    noFill();
    stroke(0);
    strokeWeight(3);
    rect(x, y, w, h);
    if (state==1)
    {
      ellipseMode(CORNER); //Ellipse for zero
      stroke(0);
      ellipse(x, y, w, h);
    } else if (state==2)
    {
      stroke(0);
      line(x, y, x+w, y+h); //Diagonal lines for x
      line(x+w, y, x, y+h); //Diagonal lines for y
    }
  }
}
