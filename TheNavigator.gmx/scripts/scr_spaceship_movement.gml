///scr_spaceship_movement()

scr_get_input();

if(right_key){
    phy_position_x +=spd;

}
//move left
if(left_key){
    phy_position_x -=spd;
 
}
//move up
if(up_key){
    phy_position_y -=spd;
    audio_play_sound(snd_thrusters,10 ,false);

}
if(keyboard_check_released(vk_up)){
    phy_position_y = 0;
    audio_stop_sound(snd_thrusters);


}
//move up
if(up_key){

    phy_position_y -=4;
    
       
    //gets the current positon of the sprite and sets up the particle emmiter region to that porsition and calls burst
 

 //set up the region added pixels to the x and x to try and get the correct positions on the sprite
 part_emitter_region(rocket_first_particle, rocket_first_emitter, x+20,x+20,y+100,y+100,0,0);
 part_emitter_burst(rocket_first_particle,rocket_first_emitter,fire_particle,5);
 
}


