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

//get the facing direction
scr_get_face_dash(dir);
var dash_damage_offset = 15;


switch(dash_face){
    case 0:
    //damage while dashin
    var damage = instance_create(x+dash_damage_offset,y,obj_damage);
    damage.creator = id;
    //set the damage objects damage variable = to player obj stat attack variable
    damage.damage =obj_player_stats.dash_attack;
    break;
    case 1:
      //damage while dashin
    var damage = instance_create(x+dash_damage_offset,y-dash_damage_offset,obj_damage);
    damage.creator = id;
    //set the damage objects damage variable = to player obj stat attack variable
    damage.damage =obj_player_stats.dash_attack;
    break;
    case 2:
      //damage while dashin
    var damage = instance_create(x,y-dash_damage_offset,obj_damage);
    damage.creator = id;
    //set the damage objects damage variable = to player obj stat attack variable
    damage.damage =obj_player_stats.dash_attack;
    break;
    case 3:
         //damage while dashin
    var damage = instance_create(x-dash_damage_offset,y-dash_damage_offset,obj_damage);
    damage.creator = id;
    //set the damage objects damage variable = to player obj stat attack variable
    damage.damage =obj_player_stats.dash_attack;
    break;
    case 4:
         //damage while dashin
    var damage = instance_create(x-dash_damage_offset,y,obj_damage);
    damage.creator = id;
    //set the damage objects damage variable = to player obj stat attack variable
    damage.damage =obj_player_stats.dash_attack;
    break;
    case 5:
         //damage while dashin
    var damage = instance_create(x-dash_damage_offset,y+dash_damage_offset,obj_damage);
    damage.creator = id;
    //set the damage objects damage variable = to player obj stat attack variable
    damage.damage =obj_player_stats.dash_attack;
    break;
    case 6:
         //damage while dashin
    var damage = instance_create(x,y+dash_damage_offset,obj_damage);
    damage.creator = id;
    //set the damage objects damage variable = to player obj stat attack variable
    damage.damage =obj_player_stats.dash_attack;
    break;
    case 7:
         //damage while dashin
    var damage = instance_create(x+dash_damage_offset,y+dash_damage_offset,obj_damage);
    damage.creator = id;
    //set the damage objects damage variable = to player obj stat attack variable
    damage.damage =obj_player_stats.dash_attack;
    break;
}


//give the dash obj our current sprite
dash.sprite_index = sprite_index;
dash.image_index = image_index;

