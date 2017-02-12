void displayTable()
{
    clearStroke();
    //Brown base
    fill(115,75,75);
    rect(border,border,    width-border*2,height-border*2,    scaler*0.02);
    
    //Yellow corners
    fill(200,200,0);
    //top left
    rect(border,border,    border,border,    scaler*0.015,0,0,0);
    //top right
    rect(width-border*2,border,    border,border,    0,scaler*0.015,0,0);
    //bottom left
    rect(border,height-border*2,    border,border,    0,0,0,scaler*0.015);
    //bottom right
    rect(width-border*2,height-border*2,    border,border,    0,0,scaler*0.015,0);
    //mid
    rect(width/2-border/2,border,    border,height-border*2);

    //Green layer
    //fill(0,150,0);
    fill(0,100,0);
    rect(border*1.3,border*1.3,    width-border*2.6,height-border*2.6,    scaler*0.02);
    
    
}//end displayTable

void displayBalls()
{
    for(int i = 0;i < colours.size();i++)
    {
      
      Ball tempBall = colours.get(i);
      tempBall.render();
    }//end for
    
    //cue.update();
    cue.render();
}//end displayBalls
  

void clearStroke()
{
  strokeWeight(0);
  noStroke();
}//end clearStroke