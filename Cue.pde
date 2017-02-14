class Cue
{
    Ball focus;
    //PVector pos;
    PShape stick;
    
    float force;
    float theta;
    float size;
    float space;
    //Cue(Ball focus, PVector pos, float theta)
    Cue(Ball focus)
    {
        this.focus = focus;
        //this.pos = pos;
        //this.theta = theta;
        
        force = 0;
        theta = 0;
        size = scaler*0.02;
        
        
        //PShape front = createShape(Rect, 0, 0, grid, grid);
        //front.setFill(theme);
        //front.setStrokeWeight(0);
        clearStroke();
        
        stick = createShape(GROUP);
        fill(150);
        stick.addChild(  createShape(RECT, -size/2, 0, size, size*3)  );
        fill(255);
        stick.addChild(  createShape(RECT, -size/2, 0, size, size)  );
        
    }//end Cue constructor
    
    void render()
    {   
        pushMatrix();
        
        translate(focus.pos.x,focus.pos.y);
        rotate(theta);
        if(lockedIn)
        {    
            if(space > scaler * 0.1)
            {
                translate(0,scaler*0.01 + scaler * 0.1 );
            }//end if
            else
            {
                translate(0,scaler*0.01 + space  );
            }//end else
        }//end if
        else
        {
            translate(0,scaler*0.01);
        }//end else
        shape(stick);

        popMatrix();
    }//end render
    
    void update()
    {
        space = focus.pos.dist(  new PVector(mouseX,mouseY)  );
        if(lockedIn)
        {
            force = space * 1.5;
            //force = scaler * 0.5;
            if(force > scaler * 0.5)
            {
                force = scaler * 0.5;
            }//end if
        }//end if
        else
        {
            theta = angle(focus.pos,new PVector(mouseX,mouseY));
        }//end else
    }//end update
    
    void hit()
    {
        //print
        focus.force.x = sin(theta) * force;
        focus.force.y = -cos(theta) * force;
    }//end hit
    

}//end class Cue