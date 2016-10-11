///scr_store_text(the color, the text,x,y)
///in this script we will store the text values
//and all the color values
//iterate the var i
//setup the text to display above player
//init the variables

color = argument0;
text = argument1;

   draw_set_font(fnt_xp);
current_alpha=1;

switch(color){
    case DAMAGE_COLOUR:colour = c_red; break;
    case HEAL_COLOUR:colour = c_green; break;
    case XP_COLOUR:colour = c_maroon; break;
    case LVLUP_COLOUR:colour = c_orange; break;
    default: colour = c_black; break;

}

//show text true now that script is called
show_text = true;
