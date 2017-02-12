boolean inRange(float value, float range)
{
    if(value > -range && value < range)
    {
        return true;
    }//end if
    else
    {
        return false;
    }//end else
}//end inRange

float angle(PVector point1, PVector point2)
{
    //return atan2(point1.y - point2.y,  point1.x - point2.x);// + TWO_PI*0.75
    return atan2(point1.y - point2.y,  point1.x - point2.x) + TWO_PI*0.25;
}//end angle