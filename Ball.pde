class Ball
{
    PVector pos;
    PVector acceleration;
    PVector velocity;
    PVector force;
    
    
    color c;
    float size;
    float mass;
    
    
    
    Ball(PVector pos, color c)
    {
        this.pos = pos;
        this.c = c;
        size = scaler*0.02;
        mass = scaler*0.01;
        velocity = new PVector(0,0);
        acceleration = new PVector(0,0);
        force = new PVector(0,0);
        //velocity.set(0,0);
    }//end Ball constructor
    
    void render()
    {
        fill(c);
        stroke(c);
        ellipse(pos.x,pos.y,    size,size);
    }//end render
    
    void update()
    {
      
      movement();
      /*
        if(velocity.x == 0 && velocity.y == 0)
        {
          
        }//end if
        else
        {
          movement();
        }//end else
      */
        
    }//end update
    
    
    void movement()
    {
        
      if(force.x == 0 && force.y == 0)
      {
          edge();
      }//end if
        
        
        /*
        if(checkKey('q'))
        {
          force.x = sin(temp) * 10;
          force.y = -cos(temp) * 10;
        }//end if
      */
        acceleration = PVector.div(force, mass);
        velocity.add(acceleration);
        pos.add(velocity);
        
        force.x = force.y = 0;
        
        velocity.mult(0.99);
        if( inRange(velocity.x, width*0.0005) && inRange(velocity.y, width*0.0005) )
        {
          velocity.set(0,0);
        }//end if 
    }//end update
    
    void collision(Ball orb)
    {
      float theta = angle(pos,orb.pos);
      //float speed = sqrt(  sq(velocity.x) + sq(velocity.y)  );//Requires object to have collision to move afterwards
      float speed = sqrt(  sq(velocity.x) + sq(velocity.y)  ) + sqrt(  sq(orb.velocity.x) + sq(orb.velocity.y)  );
      //velocity.set(PVector.mult(  new PVector(sin(theta), -cos(theta)), speed  ));
      velocity.set(PVector.mult(  new PVector(sin(theta), -cos(theta)), speed/2  ));//shares speed
      
      theta += PI;
      //speed = sqrt(  sq(orb.velocity.x) + sq(orb.velocity.y)  );//Same
      //orb.velocity.set(PVector.mult(  new PVector(sin(theta), -cos(theta)), speed  ));
      orb.velocity.set(PVector.mult(  new PVector(sin(theta), -cos(theta)), speed/2  ));
      
    }//end collision
    
    void edge()
    {
        if(pos.x < border*1.3+size/2)
        {
            pos.x = border*1.3+size/2;
            velocity.x *= -1;        
        }//end if
        else if(pos.x > width-border*1.3-size/2)
        {
            pos.x = width-border*1.3-size/2;
            velocity.x *= -1;
        }//end else if
        
        if(pos.y < border*1.3+size/2)
        {
            pos.y = border*1.3+size/2;
            velocity.y *= -1;
        }//end if
        else if(pos.y > height-border*1.3-size/2)
        {
            pos.y = height-border*1.3-size/2;
            velocity.y *= -1;
        }//end else if
    }//end input
}//end class Ball

class CueBall extends Ball
{
    CueBall(PVector pos, color c)
    {
        super(pos,c);
        size = scaler*0.015;
        mass = scaler*0.0066;
    }//end
}//end 