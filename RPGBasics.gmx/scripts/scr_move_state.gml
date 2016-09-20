///scr_move_state
scr_get_input();
//if dash key is pressed set the state = to the dash_state
//todo add the leave dash state ability
if(dash_key){
    state = scr_dash_state;
    //sets an alarm so dash will time out
    alarm[0] = room_speed/4;
}

dir = point_direction(0,0,xaxis,yaxis);

//Get the length 

if(xaxis == 0 && yaxis == 0){
    len = 0;
}else{
    len = spd;
}
//get the hspd and vspd GML function that converts lenght and direction in horizatol speed
//this fixes the bug of going to fast when walking at diagonal
hspd = lengthdir_x(len,dir);
vspd = lengthdir_y(len,dir);

//Move
phy_position_x += hspd;
phy_position_y += vspd;

//Control the sprite
image_speed = .2;
if(len == 0){
    image_index = 0;
}
//Vertical sprites
if(vspd > 0){ 
// greater then 0 moving up
    sprite_index = spr_player_down;
}else if (vspd < 0){
// less then 0 moving down
sprite_index = spr_player_up
}
//Horizontal Sprite
if(hspd > 0){
//if greater then 0 move right across the x-axis to the right
    sprite_index = spr_player_right;
}else if(hspd<0){
//opposite of above
    sprite_index =spr_player_left;
}


