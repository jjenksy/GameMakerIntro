///scr_move_state
scr_get_input();
if(right_key){
    phy_position_x +=spd;
    sprite_index = spr_player_right;
    image_speed = .5;
}
//move left
if(left_key){
    phy_position_x -=spd;
    sprite_index = spr_player_left;
    image_speed = .5;
}
//move up
if(up_key){
    phy_position_y -=spd;
    sprite_index = spr_player_up;
    image_speed = .5;
}
//move down
if(down_key){
    phy_position_y +=spd;
    sprite_index = spr_player_down;
    image_speed = .5;
}
//stop animating
if(!down_key and !up_key and !right_key and !left_key){
    //set image speed to zero
 image_speed = 0;
 //set the image index back to the first image
 image_index = 0;
}
