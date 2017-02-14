void setup()
{
  //design game to run in 2:1 width to height ratio
  
    //size(120,60);
    size(1200,600);
    scaler = (width+height)/2;
    border = scaler * 0.04;
    
    gameMode = 1;
  
    createBalls();
    player = new Cue(white);
    
    lockedIn = false;
    //Ball local = new Ball( new PVector(width*0.25,height*0.5), color(255,255,0) );
    //colours.add(local);
}//end setup

float scaler;
float border;

int gameMode;
boolean lockedIn;

ArrayList<Ball> colours = new ArrayList<Ball>();
CueBall white;
Cue player;


///////////
float temp;
///////////

void draw()
{
  background(200);  
  
  tempFunction();
  
    switch(gameMode)
    {
        case 0:
        {
          
          break;
        }//end case 0
        case 1:
        {
            displayTable();
            
            refreshBalls();
            displayBalls();
            
            if(player.focus.velocity.x == 0 && player.focus.velocity.y == 0)
            {
              player.update();
              player.render();
            }
            
          
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