///scr_string_copy_words(string, index, count)

//this script takes in a sting, index and get the char at count 
//if it is not at the end of the string then adds it to count
//meaning only whole words
var str = argument0;
var index = argument1;
//always rounds this num up
var count = ceil(argument2);
var char = string_char_at(str,count);
while(char !=" " && char !=""){
    count++;
    
    char = string_char_at(str, count);

}

var return_str = string_copy(str, index, count);

return return_str;
