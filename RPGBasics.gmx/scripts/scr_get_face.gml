///scr_get_face(dir)
var dir =argument0;

//this splits 360 into 4 quadrants if 8 dir divide by 45
face = round(dir/90);
//face = 8 for 8 dir movement
if(face ==4) face = RIGHT;

