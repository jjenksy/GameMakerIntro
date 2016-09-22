///scr_enemy_chase_state()
//sign returns the + or -1 
//obj_player.x or y returns the players x and y pos the minus the curret obj pos
scr_check_for_player();

phy_position_x += sign(targetx -x)*spd;
phy_position_y += sign(targety -y)*spd;

