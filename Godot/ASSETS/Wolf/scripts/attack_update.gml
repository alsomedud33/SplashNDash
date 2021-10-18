//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL){
    if (window == 2 || window == 3 || window == 4) {
        if (nspecial_in_air != free && runeB) {
            set_state(PS_LANDING_LAG);
        }
    }
}

if (attack == AT_FSPECIAL){
    if (window == 2){
        if (special_pressed){
            window = 3;
            window_timer = 0;
            destroy_hitboxes();
        }
    }
    can_fast_fall = false;
}

if (attack == AT_USPECIAL) {
    
    can_fast_fall = false;
    
    if (window == 1 && window_timer == 1) {
        sprite_change_offset("uspecial", 64, 94);
    }
    
    if (window == 2 && window_timer == 1 && hitpause == false)  {
        sprite_change_offset("uspecial", 64, 64);
        
        fire_ang = 90;
        
        if (joy_pad_idle == false) {
            fire_ang = joy_dir;
        }
        if (!falco) {
			set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, (12 * cos(degtorad(fire_ang)) ) * spr_dir);
			set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, (-12 * sin(degtorad(fire_ang)) ));
        } else {
			set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, (10 * cos(degtorad(fire_ang)) ) * spr_dir);
			set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, (-10 * sin(degtorad(fire_ang)) ));
		}
        spr_angle = fire_ang - 90;
    }
}

if (attack == AT_DSPECIAL){
    
    if (special_down && window = 2) {
        window_timer = 1;
    }
    can_fast_fall = false;
    can_move = false;
}

if (attack == AT_JAB) {
    if (window == 1 && has_hit_player == true && hitpause == false) {
        window = 2;
        window_timer = 0;
    }
    
    if (window == 1 && window_timer == get_window_value(AT_JAB, 1, AG_WINDOW_LENGTH) && has_hit_player == false) {
        iasa_script();
        set_state(PS_IDLE);
    }
}



