void setup()
{
  //design game to run in 2:1 width to height ratio
  
  
    size(1200,600);
    scaler = (width+height)/2;
    border = scaler * 0.04;
    
    gameMode = 1;
  
}//end setup

float scaler;
float border;

int gameMode;

void draw()
{
    switch(gameMode)
    {
        case 0:
        {
          
          break;
        }//end case 0
        case 1:
        {
            displayTable();
          
          
          
            break;
        }//end case 0
        case 3:
        {
          
            break;
        }//end case 0
        case 4:
        {
          
            break;
        }//end case 0
        default:
        {
            println("!Default! gameMode = " + gameMode);
            break;
        }//end default
    }//end switch
}//end draw