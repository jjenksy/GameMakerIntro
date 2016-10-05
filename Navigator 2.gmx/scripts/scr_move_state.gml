///scr_move_state()

// set the movement
movement = MOVE;


dir = point_direction(0,0,obj_input.xaxis,obj_input.yaxis);

//Get the length 

if(obj_input.xaxis == 0 && obj_input.yaxis == 0){
    len = 0;
}else{
    len = spd;
    //get the direction we are facing
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
//image_speed = .2;
//if(len == 0){
  //  image_index = 0;
//}
