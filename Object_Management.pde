void createBalls()
{
    float tempX = width*0.6;
    float tempY = height*0.5;
    int randMin = 100;
    int randMax = 200;
    
    
    for(int i = 1;i < 5;i++)
    {
        for(int j = 0;j < i;j++)
        {
            //Ball local = new Ball( new PVector( tempX + i*10,tempY + j*10 - ( (i-1) * 5) ), color(200,200,0) );
            Ball local = new Ball( new PVector( tempX + i*(width*0.018),tempY + j*(height*0.035) - ( (i-1) * (height*0.0175)) ), color(random(randMin,randMax),random(randMin,randMax),random(randMin,randMax)) );
            colours.add(local);
        }//end for
    }//end for
    
    white = new CueBall( new PVector(width*0.25,height*0.5), color(255,255,255) );
}//end createBalls

void refreshBalls()
{
    
    for(int i = 0;i < colours.size();i++)
    {
      
      Ball tempBall = colours.get(i);
      if( white.pos.dist(tempBall.pos) < white.size/2 + tempBall.size/2 )
      {
          white.collision(tempBall);
      }//end if
      
      for(int j = 0;j < colours.size();j++)
      {
          if(i != j)
          {
              Ball checkBall = colours.get(j);
              if( tempBall.pos.dist(checkBall.pos) < tempBall.size/2 + checkBall.size/2 )
              {
                  tempBall.collision(checkBall);
              }//end if
          }//end if
      }//end for
      
      tempBall.update();
    }//end for
      
    white.update();
}//end refreshBalls