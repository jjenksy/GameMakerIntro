///scr_swap_weapong(new_weapon)
var new_weapon = argument0;
//swap the weapos
//assign the current weapon to a temp var
var temp = weapon_sprite;

weapon_sprite = new_weapon.sprite_index;
new_weapon.sprite_index = temp;
