///scr_chance(percentage)
var percent = argument[0];//between 0 and 1
//Returns a value clamped between the specified minimum and maximum.
percent = clamp(percent, 0,1);

//returns true if random float is below percent
return random(1)<percent;
