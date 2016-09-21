///scr_move_state
scr_get_input();
//if dash key is pressed set the state = to the dash_state

if(dash_key){
    state = scr_dash_state;
    //sets an alarm so dash will time out
    alarm[0] = room_speed/4;
}
if(attack_key){
    image_index = 0;
    state = scr_attack_state;
    
}

dir = point_direction(0,0,xaxis,yaxis);

//Get the length 

if(xaxis == 0 && yaxis == 0){
    len = 0;
}else{
    len = spd;
    scr_get_face();
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

    switch(face){
        case RIGHT:
        sprite_index = spr_player_right;
        break;
        case UP:
        sprite_index = spr_player_up;
        break;
        case LEFT:
        sprite_index = spr_player_left;
        break;
        case DOWN:
        sprite_index = spr_player_down;
        break;    
    
    
    }

