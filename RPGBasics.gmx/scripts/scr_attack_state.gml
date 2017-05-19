///scr_attack_state
image_speed = .5;
movement =ATTACK;
//get the characthers current direction using a switch statement
//check your current sprite index
switch(face){
    case DOWN:
        sprite_index = spr_player_attack_down;
        break;
    case UP:
        sprite_index = spr_player_attack_up;
        break;
     case RIGHT:
        sprite_index = spr_player_attack_right;
        break;
     case LEFT:
        sprite_index = spr_player_attack_left;
        break;
    
}
if(scr_animation_hit_frame(2)){
        //create a weapon instance 
        //the weapon is assigned in player obj
    var attack_animation = instance_create(x,y,obj_weapon_animation);
    attack_animation.dir = face*90;
    attack_animation.image_angle = (face*90) +45;
    
    //set the sprite
    attack_animation.sprite_index = weapon_sprite;


}
if(scr_animation_hit_frame(3)){
    var xx =0;
    var yy =0;

   
  
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
   
   //play the audio
    audio_play_sound(snd_sword_attack,8,false);
    var damage = instance_create(xx,yy,obj_damage);
    damage.creator = id;
    //set the damage objects damage variable = to player obj stat attack variable
    damage.damage =obj_player_stats.attack;
  
}

