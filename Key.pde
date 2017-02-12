boolean[] keys = new boolean[1000];

void keyPressed()
{
    keys[keyCode] = true;
    
    
  /*
    if(keyCode == 'q' || keyCode == 'Q')
    {
      
      
        cue.force.x = sin(temp) * 10;
        cue.force.y = -cos(temp) * 10;
    }
    
    if(keyCode == 'w' || keyCode == 'W')
    {
      
      
        cue.force.x = sin(temp) * -10;
        cue.force.y = -cos(temp) * -10;
    }
  */
  
  
  
}//end keyPressed

void keyReleased()
{
    keys[keyCode] = false; 
}

boolean checkKey(int k)
{
     if (keys.length >= k) 
     {
         return keys[k] || keys[Character.toUpperCase(k)];  
     }//end if
     
     return false;
}