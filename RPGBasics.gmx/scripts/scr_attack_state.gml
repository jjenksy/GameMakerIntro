///scr_attack_state
image_speed = .5;

//get the characthers current direction using a switch statement
//check your current sprite index
switch(sprite_index){
    case spr_player_down:
        sprite_index = spr_player_attack_down;
        break;
    case spr_player_up:
        sprite_index = spr_player_attack_up;
        break;
     case spr_player_right:
        sprite_index = spr_player_attack_right;
        break;
     case spr_player_left:
        sprite_index = spr_player_attack_left;
        break;
    
}
if(image_index >=3 && attacked == false){
    var xx =0;
    var yy =0;

   
    //show_debug_message(sprite_index);
    //show_debug_message(spr_player_attack_down);
      switch(sprite_index){
        case spr_player_attack_down:
            xx=x;
            yy=y+14;
            break;
                
        case spr_player_attack_up:
            xx=x;
            yy=y-10;
            break;
                
        case spr_player_attack_right:
            xx=x+12;
            yy=y+2;
            break;
                
        case spr_player_attack_left:
            xx=x-12;
            yy=y+2;
            break;
        
    }
    //show_debug_message(xx);
   // show_debug_message(yy);

    var damage = instance_create(xx,yy,obj_damage);
    damage.creator = id;
    //set the damage objects damage variable = to player obj stat attack variable
    damage.damage =obj_player_stats.attack;
    attacked = true;
}

