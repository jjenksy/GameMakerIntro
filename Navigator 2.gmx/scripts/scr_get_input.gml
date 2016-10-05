///scr_get_input()
down_key =keyboard_check(vk_down);
right_key = keyboard_check(vk_right)
left_key = keyboard_check(vk_left);
up_key =keyboard_check(vk_up);
missle = keyboard_check(vk_space);


//get the axis
//left key is one and right key is one so if both are pressed then == 0
//it creates move across the domain -of the x-axis by subtracting one from it or adding 1 to it
xaxis = (right_key - left_key);
//just a reminder down is postive on computers and up is negative 
//so the calculation is reverse of what we would logically think in math
yaxis = (down_key - up_key);
