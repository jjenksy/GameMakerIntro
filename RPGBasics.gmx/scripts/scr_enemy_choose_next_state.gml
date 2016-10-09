///scr_enemy_choose_next_state()
if (alarm[0] <=0){
    state = choose(scr_enemy_wander_state, scr_enemy_idle_state);
    ///set the alarm to the room seed times a random int
    alarm[0] = room_speed*irandom_range(2, 4);
    //make sure its in wander state
    if(state == scr_enemy_wander_state){
    // set the random targets
    xaxis = random_range(-1,1);
    xaxis = random_range(-1,1);
    }
}
