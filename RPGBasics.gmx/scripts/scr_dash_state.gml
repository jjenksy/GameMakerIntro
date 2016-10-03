///scr_dash_state
movement =MOVE;
//gets the current facing direction and makes it proper 360 degrees
if(len == 0){
    dir = face *90;
}

len = spd *4;

//get the hspd and vspd GML function that converts lenght and direction in horizatol speed
//this fixes the bug of going to fast when walking at diagonal
hspd = lengthdir_x(len,dir);
vspd = lengthdir_y(len,dir);

//Move
phy_position_x += hspd;
phy_position_y += vspd;

//Create the dash effect instance at the current position
//return the ID for instance effect
var dash = instance_create(x,y, obj_dash_effect);
//give the dash obj our current sprite
dash.sprite_index = sprite_index;
dash.image_index = image_index;

