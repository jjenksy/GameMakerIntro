///scr_enemy_choose_next_state()
if (alarm[0] <=0){
    state = choose(scr_enemy_wander_state, scr_enemy_idle_state);
    ///set the alarm to the room seed times a random int
    alarm[0] = room_speed*irandom_range(2, 4);
    // set the random targets
    targetx = random(room_width);
    targety = random(room_height);
}
