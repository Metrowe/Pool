void mousePressed()
{
    lockedIn = true;
}//end mouseClicked

void mouseReleased()
{
    player.hit();
    
    
    lockedIn = false;
}//end mouseClicked