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

//if not moving
if(hspd==0 && vspd ==0){
//change the second argument in the sprite array
movement = NOT_MOVING;

}
//control projectile
//missle key pressed
if(obj_input.missle){
//make sure a missle does not exist already
    if(!instance_exists(obj_missle)){
    //create an instance of the projectile
    var p = instance_create(x,y,obj_missle);
    //Returns the horizontal x-component of the vector determined by the indicated length and direction
    var xforce = lengthdir_x(20,face*45);
    var yforce = lengthdir_y(20,face*45);
    
    p.creator = id;
    
    with(p){
    //This function applies an impulse to a position in the room with a strength defined by a vector.
    physics_apply_impulse(x,y,xforce,yforce);
   
    }
    }
}
