///scr_projectile_particle(shape ,color1,color2 ) 
//returns the particle system to be destroyed
var shape = argument[0];
var color1 = argument[1];
var color2 =  argument[2];


fire_particle = part_system_create();
   //push a reference into the array
   particles[0]=fire_particle;
   //to destroy
   //part_system_destroy( mysystem );
   


//uncomment to set the depth
//part_system_depth(fire_particle,0);

particle = part_type_create();

//push the reference in the array
particles[1]= particle;
part_type_shape(particle,shape);

//we can set the base X and Y scale values of the particle shape
part_type_scale(particle,1,1);
//we can set the base X and Y scale values of the particle shape
part_type_size(particle,0.10,0.15,-.001,0);

//create a color scale for the particle
part_type_color2(particle,color1,color2);

//create some transparency
part_type_alpha2(particle,1,0.75);

//speed code
part_type_speed(particle,0.9,1.5,0,0);

//particle direction
part_type_direction(particle,0,270,0,0);

//apply gravity to the particle
part_type_gravity(particle,0.02,90);

//make the particle rotate
part_type_orientation(particle,0,359,10,0,true);
//particle life cycle
part_type_life(particle,5,100);
//add a blend affect
part_type_blend(particle,true);

//create an emmiter
emitter = part_emitter_create(particle);
particles[2] = emitter;
//shape of particle
//part_emitter_region(rocket_first_particle, rocket_first_emitter, x-20, x+20, y-20, y+20, ps_shape_ellipse, ps_distr_gaussian);



return particles;
