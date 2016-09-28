///scr_enemy_chase_state()
//sign returns the + or -1 
//obj_player.x or y returns the players x and y pos the minus the curret obj pos
scr_check_for_player();

//Returns the direction, in degrees, of a vector comprised
var dir = point_direction(x,y,targetx,targety)
//x axis mvment
var hspd = lengthdir_x(spd,dir);
//y axis movement
var vspd = lengthdir_y(spd,dir);
//make the enemy face the player
//This function returns whether a number 
//is positive, negative or neither and returns 1, -1, 0 
//sets it to the xscale amount
//This value sets the horizontal scaling applied to the sprite
 if(hspd!=0){
    image_xscale = sign(hspd);
}
//This variable can be used to get (or to set) 
//the x position of the instance within the game room physics world
phy_position_x += hspd;
phy_position_y += vspd;

