///scr_get_input()
down_key =keyboard_check(vk_down);
right_key = keyboard_check(vk_right)
left_key = keyboard_check(vk_left);
up_key =keyboard_check(vk_up);
dash_key = keyboard_check_pressed(ord('C'));
attack_key = keyboard_check_pressed(ord('X'));
swap_key = keyboard_check_pressed(ord('Z'));
spell_key = keyboard_check_pressed(ord('V'));
pause_key = keyboard_check_pressed(vk_escape);

//set up for controller and keyboard
//get the axis
//left key is one and right key is one so if both are pressed then == 0
//it creates move across the domain -of the x-axis by subtracting one from it or adding 1 to it
xaxis = (right_key - left_key);
//just a reminder down is postive on computers and up is negative 
//so the calculation is reverse of what we would logically think in math
yaxis = (down_key - up_key);



//check for gamepad input on first slot
//checks if a gamePad is connected and returns a boolean
//get direction gml function takes to points from x and y cordinates in a room
if(gamepad_is_connected(0)){
    //set the deadzone for the controllers dpad
    gamepad_set_axis_deadzone(0,.35);
    //get the position of the gamepad Returns a value based on the current axis position.
   xaxis = gamepad_axis_value(0,gp_axislh);
   yaxis = gamepad_axis_value(0,gp_axislv);
   spell_key = gamepad_button_check_pressed(0,gp_face2);
   //Returns whether a given gamepad button has been pressed
   dash_key = gamepad_button_check_pressed(0,gp_face1);
   attack_key = gamepad_button_check_pressed(0,gp_face3);
   pause_key = gamepad_button_check_pressed(0,gp_start);
   swap_key = gamepad_button_check_pressed(0,gp_face4);
 
}
