///scr_save_game();
//this script maps all the stats for player and the current room
//it creates a save file in json and encodes it to a base64 encryption

if(!instance_exists(obj_player_stats))exit;

//creat the save data
//This function is used to create a new, empty, ds_map and will return its id 
//which is then used to access the data structure in all other ds_map functions. 
var save_data = ds_map_create();

with(obj_player_stats){
    //save the data to the map and give it keys
    save_data[?"room"] = previous_room;
    save_data[?"x"] = 0;
    save_data[?"y"] = 0;
    save_data[?"hp"] = hp;
    save_data[?"maxhp"] = maxhp;
    save_data[?"stamina"] = stamina;
    save_data[?"maxstamina"] = maxstamina;
    save_data[?"expr"] = expr;
    save_data[?"maxexpr"] = maxexpr;
    save_data[?"level"] = level;
    save_data[?"attack"] = attack;
                      
    

}
//convert the map to json
var save_string =json_encode(save_data);
//
save_string = base64_encode(save_string);
ds_map_destroy(save_data);
//This function opens the text file with the indicated filename for writing only (if the file does not exist, it is created
var file = file_text_open_write(working_directory + "mysavegame.txt");
//Writes a string to a given opened text file.
file_text_write_string(file, save_string);
//Closes a given opened text file.
file_text_close(file);



show_message("Saved game");

