///scr_move_state

// set the movement
movement = MOVE;

//if dash key is pressed set the state = to the dash_state
//check if the dashkey is pressed and there is enough
//stamina to dash
if(obj_input.dash_key){
    //prioritize speaking over dashing
    var xdir = lengthdir_x(8, face*90);
    var ydir =lengthdir_y(8, face*90);
    //if there is a speaker will return its ID if not returns noone
    var speaker = instance_place(x+xdir,y+ydir,obj_speaker);
    if(speaker!=noone){
    //talk to it using its ID returned from above
        with(speaker){
            if(!instance_exists(dialog)){
                dialog = instance_create(x+xoffset, y+ yoffset, obj_dialog);
                dialog.text =text;    
            
            }
            else{
                dialog.text_page++;
                dialog.text_count = 0;
                //array_length_1d Returns the length of the first dimension of an array.
                if(dialog.text_page > array_length_1d(dialog.text)-1){
                    with(dialog){
                         instance_destroy();
                    }
                   
                }
            }
        
        }
    }else if(obj_player_stats.stamina >=DASH_COST)
    {
    //dash
    state = scr_dash_state;
    //sets an alarm so dash will time out
    alarm[0] = room_speed/4;
    //subract the dash_cost from current players stamina
    obj_player_stats.stamina-=DASH_COST;
    //set the dash regen alarm
    obj_player_stats.alarm[0] = room_speed;
    }
}
if(obj_input.attack_key){
    image_index = 0;
    state = scr_attack_state;
    
}

//spell key pressed
if(obj_input.spell_key){
    //if doesn't exist already create an instance of the projectile
    if(!instance_exists(obj_projectile)){
    
        var p = instance_create(x,y,obj_projectile);
            //Returns the horizontal x-component of the vector determined by the indicated length and direction
            var xforce = lengthdir_x(20,face*90);
            var yforce = lengthdir_y(20,face*90);
            
            p.creator = id;
            
            with(p){
            //This function applies an impulse to a position in the room with a strength defined by a vector.
            physics_apply_impulse(x,y,xforce,yforce);
            }
        }
}

dir = point_direction(0,0,obj_input.xaxis,obj_input.yaxis);

//Get the length 

if(obj_input.xaxis == 0 && obj_input.yaxis == 0){
    len = 0;
}else{
    len = spd;
    //get the direction we are facing
    scr_get_face(dir);
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


