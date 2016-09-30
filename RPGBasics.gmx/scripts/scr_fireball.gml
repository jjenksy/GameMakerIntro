///scr_fireball

//sets up the initial particle system for the fire emmitor in a creation event
// need to be paired with a call to the below code in a step event or whatever event I need
//gets the current positon of the sprite and sets up the particle emmiter region to that porsition and calls burst
 
 //current x and y location of the sprite
//x = obj_spaceShip.x; 
//y = obj_spaceShip.y;
 //set up the region added pixels to the x and x to try and get the correct positions on the sprite
 //part_emitter_region(rocket_first_particle, rocket_first_emitter, x+20,x+20,y+100,y+100,0,0);
  //part_emitter_burst(rocket_first_particle,rocket_first_emitter,fire_particle,5);

  
fire_particle = part_system_create();
//uncomment to set the depth
//part_system_depth(fire_particle,0);

rocket_first_particle = part_type_create();
part_type_shape(rocket_first_particle,pt_shape_square);

//we can set the base X and Y scale values of the particle shape
part_type_scale(rocket_first_particle,1,1);
//we can set the base X and Y scale values of the particle shape
part_type_size(rocket_first_particle,0.10,0.15,-.001,0);

//create a color scale for the particle
part_type_color2(rocket_first_particle,c_red,c_orange);

//create some transparency
part_type_alpha2(rocket_first_particle,1,0.75);

//speed code
part_type_speed(rocket_first_particle,0.1,0.5,0,0);

//particle direction
part_type_direction(rocket_first_particle,0,270,0,0);

//apply gravity to the particle
part_type_gravity(rocket_first_particle,0.02,90);

//make the particle rotate
part_type_orientation(rocket_first_particle,0,359,10,0,true);
//particle life cycle
part_type_life(rocket_first_particle,100,150);
//add a blend affect
part_type_blend(rocket_first_particle,true);

//create an emmiter
rocket_first_emitter = part_emitter_create(rocket_first_particle);
//shape of particle
//part_emitter_region(rocket_first_particle, rocket_first_emitter, x-20, x+20, y-20, y+20, ps_shape_ellipse, ps_distr_gaussian);

//stream emmiter
//part_emitter_stream(rocket_first_particle,rocket_first_emitter,fire_particle,1);
