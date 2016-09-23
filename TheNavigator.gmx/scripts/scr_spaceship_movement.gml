///scr_spaceship_movement()

scr_get_input();
if(left_key){

show_debug_message(x);
    hspeed -=4; 
    
  
}
if(right_key){

show_debug_message(x);
    hspeed +=4;
}
//move up
if(up_key){

show_debug_message(y);
    vspeed -=4;
    
    //gets the current positon of the sprite and sets up the particle emmiter region to that porsition and calls burst
 

 //set up the region added pixels to the x and x to try and get the correct positions on the sprite
 part_emitter_region(rocket_first_particle, rocket_first_emitter, x+20,x+20,y+100,y+100,0,0);
 part_emitter_burst(rocket_first_particle,rocket_first_emitter,fire_particle,5);
}


