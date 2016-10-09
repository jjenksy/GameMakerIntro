///scr_move_axis()

//Returns the direction, in degrees, of a vector comprised
var dir = point_direction(0,0,xaxis,yaxis)
//x axis mvment
var hspd = lengthdir_x(spd,dir);
//y axis movement
var vspd = lengthdir_y(spd,dir);
    //make the enemy face the correct movement direction
    //This function returns whether a number 
    //is positive, negative or neither and returns 1, -1, 0 
    //sets it to the xscale amount
    //This value sets the horizontal scaling applied to the sprite
    //make sure the hspd is not 0
    if(hspd!=0){
     image_xscale = sign(hspd);
    }
    //get the face
    scr_get_face(dir);
  movement = MOVE; 
    //This variable can be used to get (or to set) 
    //the x position of the instance within the game room physics world
    phy_position_x += hspd;
    phy_position_y += vspd;

