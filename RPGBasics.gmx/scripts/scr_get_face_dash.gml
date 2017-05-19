///scr_get_face_dash(dir)

var dir =argument0;

//this splits 360 into 8 quadrants
dash_face = round(dir/45);
//face = 8 for 8 dir movement
if(dash_face ==8) dash_face = RIGHT;
