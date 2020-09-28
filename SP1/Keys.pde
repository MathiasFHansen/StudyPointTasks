class Keys
{
  private boolean wDown = false;
  private boolean aDown = false;
  private boolean sDown = false;
  private boolean dDown = false;
  private boolean upDown = false;
  private boolean leftDown = false;
  private boolean downDown = false;
  private boolean rightDown = false;
  private boolean quitGame = false;

  public Keys() {
  }

  public boolean wDown()
  {
    return wDown;
  }

  public boolean aDown()
  {
    return aDown;
  }

  public boolean sDown()
  {
    return sDown;
  }

  public boolean dDown()
  {
    return dDown;
  }

  //player 2 movement
  public boolean upDown()
  {
    return upDown;
  }

  public boolean leftDown()
  {
    return leftDown;
  }

  public boolean downDown()
  {
    return downDown;
  }

  public boolean rightDown()
  {
    return rightDown;
  }
  
  //quitgame
  public boolean quitGame()
  {
    return quitGame;
  }


  void onKeyPressed(char ch)
  {
    if (ch == key)
    {
      if(ch == ENTER || ch == RETURN)
      {
      quitGame = true;
      }
    }
    if (ch == 'W' || ch == 'w')
    {
      wDown = true;
    } else if (ch == 'A' || ch == 'a')
    {
      aDown = true;
    } else if (ch == 'S' || ch == 's')
    {
      sDown = true;
    } else if (ch == 'D' || ch == 'd')
    {
      dDown = true;
    }
  }

  void onKeyReleased(char ch)
  {
    if (ch == 'W' || ch == 'w')
    {
      wDown = false;
    } else if (ch == 'A' || ch == 'a')
    {
      aDown = false;
    } else if (ch == 'S' || ch == 's')
    {
      sDown = false;
    } else if (ch == 'D' || ch == 'd')
    {
      dDown = false;
    }
  }

  //player 2
  void onKeyTwoPressed(int code)
  {
    if(code == UP)
    {
      upDown = true;
    }
    else if(code == LEFT)
    {
      leftDown = true;
    }
    else if(code == DOWN)
    {
      downDown = true;
    }
    else if(code == RIGHT)
    {
      rightDown = true;
    }
  }
  void onKeyTwoReleased(int code)
  {
    if(code == UP)
    {
      upDown = false;
    }
    else if(code == LEFT)
    {
      leftDown = false;
    }
    else if(code == DOWN)
    {
      downDown = false;
    }
    else if(code == RIGHT)
    {
      rightDown = false;
    }
  }
  
  
}
