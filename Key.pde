boolean[] keys = new boolean[1000];

void keyPressed()
{
    keys[keyCode] = true;
    
    
  /*
    if(keyCode == 'q' || keyCode == 'Q')
    {
      
      
        white.force.x = sin(temp) * 10;
        white.force.y = -cos(temp) * 10;
    }
    
    if(keyCode == 'w' || keyCode == 'W')
    {
      
      
        white.force.x = sin(temp) * -10;
        white.force.y = -cos(temp) * -10;
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