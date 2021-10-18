if (state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD || state == PS_TECH_GROUND || state == PS_TECH_FORWARD || state == PS_TECH_BACKWARD || state == PS_PARRY) {
    if (state_timer == 0) {
        sound_play(sound_get("shoulder_press"));
    }
}

if (state == PS_DASH_START || state == PS_DASH_TURN) {
    if (state_timer == 0) {
        if (spr_dir = 1) {
            sound_play(sound_get("stick_tap_r"));
        } else {
            sound_play(sound_get("stick_tap_l"));
        }
    }
}

if (state == PS_DASH_STOP) {
    if (state_timer == 3) {
        sound_play(sound_get("stick_release"));
    }
}

if (state == PS_DASH_START && !right_down && !left_down) {
    if (state_timer == 6) {
        sound_play(sound_get("stick_release"));
    }
}

if (state == PS_AIR_DODGE && state_timer = 3) {
    sound_play(sound_get("fox_airdodge"))
}

if (state == PS_DOUBLE_JUMP && state_timer = 0) {
    sound_play(sound_get("fox_normal"))
}

if !free {
    dspecial_used_in_air = false;
}

//rune activatiom
if runesUpdated {
    //tier 1 runes
    if runeA {
        set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 130);
    } else {
        reset_hitbox_value(AT_FTILT, 1, HG_ANGLE);
    }
    
    if runeB {
        set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 12);
        
        set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 15);
        
        set_hitbox_value(AT_NSPECIAL, 1, HG_FORCE_FLINCH, 1);
        set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 2);
        set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 3);
        set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1.3);
        
    } else {
        reset_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH);
        
        reset_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH);
        
        reset_hitbox_value(AT_NSPECIAL, 1, HG_FORCE_FLINCH);
        reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK);
        reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE);
        reset_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER);
    }
    
    if runeC {
        max_djumps = 2;
    } else {
        max_djumps = 1;
    }
    
    if !runeD {
        reset_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED);
        
        reset_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION);
        reset_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION);
    }
    
    if runeE {
        set_attack_value(AT_DAIR, AG_USES_CUSTOM_GRAVITY, 1);
        
        set_window_value(AT_DAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.2);
        
        set_window_value(AT_DAIR, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.2);
    } else {
        reset_attack_value(AT_DAIR, AG_USES_CUSTOM_GRAVITY);
    }
    
    if runeO {
        set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt2"));
    } else {
        set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
    }
    
    //tier 2 runes
    if runeG {
        set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 270);
    } else {
        reset_hitbox_value(AT_BAIR, 1, HG_ANGLE);
    }
    
    if runeH {
        set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 270);
    } else {
        reset_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE);
    }
    
    if runeI {
        set_hitbox_value(AT_FSPECIAL, 1, HG_EXTRA_HITPAUSE, 35);
        set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 256);
        set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
    } else {
        reset_hitbox_value(AT_FSPECIAL, 1, HG_EXTRA_HITPAUSE);
        reset_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT);
        reset_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX);
    }
    
    if runeK {
        air_accel = .8;
    } else {
        air_accel = .3;
    }
    
    //tier 3 runes
    if runeL {
        set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, 1.2);
    } else {
        reset_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING);
    }
    if runeM {
        set_attack_value(AT_FAIR, AG_USES_CUSTOM_GRAVITY, 1);
        
        set_window_value(AT_FAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.2);
        
        set_window_value(AT_FAIR, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.2);
        
        set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 20);
        set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 9);
    } else {
        reset_attack_value(AT_FAIR, AG_USES_CUSTOM_GRAVITY);
        
        reset_hitbox_value(AT_FAIR, 1, HG_ANGLE);
        reset_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK);
    }
    
    if runeN {
        set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
        set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 10);
    } else {
        reset_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES);
        reset_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH);
    }
    
    if runeF {
        set_num_hitboxes(AT_TAUNT, 1);
    } else {
        set_num_hitboxes(AT_TAUNT, 0);
    }
}

//trummel support
if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 14;
    trummelcodecsprite1 = sprite_get("trummelcodec");
    trummelcodecsprite2 = sprite_get("idle");
    
    if (trummelcodec_id.currentcodecline == 1 && trummelcodec_id.codectimer2 == 1) {
        if (trummelcodec_id.codecindex == 14) {
            sound_play(sound_get("fox_trummel_codec"));
        } else if (trummelcodec_id.codecindex == 12) {
            sound_play(sound_get("fox_dsmash"));
        }
    }
    
    var page = 0;

    //Page 0
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Ugh... is this yet";
    trummelcodecline[page,2] = "another 100% charecter?";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;

    //Page 1
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "these are getting";
    trummelcodecline[page,2] = "boring at this";
    trummelcodecline[page,3] = "point";
    trummelcodecline[page,4] = "";
    page++;
    
    //Page 2
    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "This appears to be";
    trummelcodecline[page,2] = "100% Accurate Wolf,";
    trummelcodecline[page,3] = "he's probably just";
    trummelcodecline[page,4] = "another overpowered...";
    page++;
    
    //Page 3
    trummelcodecspeaker[page] = 0;
    trummelcodecexpresssion[page] = 0;
    
    trummelcodecline[page,1] = "... meme character.";
    trummelcodecline[page,2] = "Is this truely ";
    trummelcodecline[page,3] = "'100% Accurate'";
    trummelcodecline[page,4] = "";
    page++;
    
    //Page 4
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "these arent";
    trummelcodecline[page,2] = "funny anymore";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
    
    //Page 5
    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "To be fair, there are";
    trummelcodecline[page,2] = "worse characters you ";
    trummelcodecline[page,3] = "could be fighting. Think";
    trummelcodecline[page,4] = "if he was just a sandbert.";
    page++;
    
    //Page 6
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "It doesn't matter which";
    trummelcodecline[page,2] = "Lame meme character it is,";
    trummelcodecline[page,3] = "we have no chance to win";
    trummelcodecline[page,4] = "anyway...";
    page++;
    
    //Page 7
    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Maybe not. If you keep ";
    trummelcodecline[page,2] = "your cool and be careful,";
    trummelcodecline[page,3] = "you might have a chance.";
    trummelcodecline[page,4] = "";
    page++;
    
    //Page 8
    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "He may be strong,";
    trummelcodecline[page,2] = "but he might have some";
    trummelcodecline[page,3] = "weaknesses.";
    trummelcodecline[page,4] = "";
    page++;
    
    //Page 9
    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Remember that your slower";
    trummelcodecline[page,2] = "speed leads to easier";
    trummelcodecline[page,3] = "Control in the air.";
    trummelcodecline[page,4] = "";
    page++;
    
    
    //Page 10
    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Also, remember that";
    trummelcodecline[page,2] = "your balanced nature";
    trummelcodecline[page,3] = "makes you better than him.";
    trummelcodecline[page,4] = "";
    page++;
    
    //Page 11
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;

    trummelcodecline[page,1] = "Yeah, his overpowered";
    trummelcodecline[page,2] = "state makes him not fit";
    trummelcodecline[page,3] = "for tournament play...";
    trummelcodecline[page,4] = "";
    page++;
    
    //Page 12
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "!!!";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
    
    //Page 13
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;

    trummelcodecline[page,1] = "Oh no, that might have";
    trummelcodecline[page,2] = "angered him...";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
    
    //Page 14
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "GHRRRRAAAAHHHHHH!";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
}

//kirby support
if swallowed {
    swallowed = 0;
    var ability_spr = sprite_get("dspecial_kirby");
    var ability_hurt = sprite_get("dspecial_kirby_hurt");
    var ability_sfx = sound_get("fox_shine");
	var myicon = sprite_get("copy_icon")
    with enemykirby {
		newicon = myicon
        set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
        set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
        set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 2);
        set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 4);
        set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
        set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
        set_attack_value(AT_EXTRA_3, AG_USES_CUSTOM_GRAVITY, 1);
        
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 3);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED_TYPE, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.9);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.8);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, ability_sfx);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_INVINCIBILITY, 1);
        
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 4);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 2);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 0);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED_TYPE, 0);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 2);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.8);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_INVINCIBILITY, 2);
        
        set_num_hitboxes(AT_EXTRA_3, 1);
        
        set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 3);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -20);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 90);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 90);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 4);
        set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 10);
        set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, .1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 3);
        set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 20);
        set_hitbox_value(AT_EXTRA_3, 1, HG_EFFECT, 11);
        set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE_FLIPPER, 6);
        set_hitbox_value(AT_EXTRA_3, 1, HG_EXTRA_HITPAUSE, 10);
        set_hitbox_value(AT_EXTRA_3, 1, HG_TECHABLE, 1);
    }
}

//kirby attack update
if enemykirby != undefined { //if kirby is in a match & swallowed
    with oPlayer { //Run through all players
        if (air_max_speed != 0) {
            og_air_speed = air_max_speed;
        }
        
        if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_EXTRA_3) {
            
            can_jump = true;
            can_fast_fall = false;
            can_move = false;
            
            air_max_speed = 0;
            
            if (special_down && window == 2) {
                window_timer = 1;
            }
            
        } else {
            air_max_speed = og_air_speed;
        }
    }
}

if (introTimer2 < 3) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}

// Easter Egg Timer
if (easter_egg_timer <= 90) {
	easter_egg_timer++;
	if (special_pressed) {
		falco = true;
		easter_egg_timer = 91;
	} else {
		falco = false;
	}
}

// BTT Date
if get_btt_data { //Get data for Break The Targets
	course_name = "Wolf Course";
	//Set the spawn properties
	respawn_point = [[45,30],[0,0],1];
	//Set the collision of the solid sprites to precise
	sprite_change_collision_mask("btt_solid",true, 1, 0, 0, 0, 0, 0 );  
	room_add(1,[
	    [ //Each Cell
	        [0,0], //Cell Coordinates
	        [
	        	//Targets
		        [10, 28, 17, 0, -5, [0, 0, 0, 0, 0, 0, 0, 0], [0]],
		        [10, 74, 28, 0, -5, [1, 0, 0, 0, 0, 0, 0, 0], [0]],
		        [10, 89, 18, 0, -5, [2, 0, 0, 0, 0, 0, 0, 0], [0]],
		        [10, 100, 40, 0, -5, [3, 0, 0, 0, 0, 0, 0, 0], [0]],
		        [10, 55, 35, 0, -5, [3, 0, 0, 0, 0, 0, 0, 0], [0]],
		        [10, 60, 60, 0, -5, [4, 0, 0, 0, 0, 0, 0, 0], [0]],
				[10, 87, 67, 0, -5, [2, 0, 0, 0, 0, 0, 0, 0], [0]],
				[10, 36, 56, 0, -5, [0, 0, 0, 0, 0, 0, 0, 0], [0]],
				[10, 40, 70, 0, -5, [0, 0, 0, 0, 0, 0, 0, 0], [0]],
				[10, 50, 46, 0, -5, [0, 0, 0, 0, 0, 0, 0, 0], [0]],
		        //Solid Ground
		    	[1, 2, 2, 2, 0, [sprite_get("btt_solid"), 0, 0, 0, 0, 0, 0, 0], [0]],
		    	//Plats
		    	[1, 64, 67, 1, 0, [sprite_get("btt_plat_64"), 0, 0, 0, 0, 0, 0, 0], [0]],
				[1, 56, 67, 1, 0, [sprite_get("btt_plat_64"), 0, 0, 0, 0, 0, 0, 0], [0]],
	            ]
	        ],
	    //Blastzones
	    [ //Each Cell
	        [0,1], //Cell Coordinates
	        [
	            [4, 0, 32, 0, 0, [4, 0, 0, 0, 0, 163*16, 20, 0], [0,0]]
	            ]
	        ],
	    [
	        [1,1],
	        [
	        	[4, 0, 32, 0, 0, [4, 0, 0, 0, 0, 163*16, 20, 0], [0,0]]
	            ]
	        ],
	    [ //Each Cell
	        [-1,1], //Cell Coordinates
	        [
	        	[4, 0, 32, 0, 0, [4, 0, 0, 0, 0, 163*16, 20, 0], [0,0]]
	            ]
	        ]
	    ]);
}

// btt music

with (obj_stage_main) {
    if ("btt_select" in self) {
        var btt_on = true;
    }
}

if (btt_on) {
    btt = true;
    // Experimental Music Function
    if (experimental_music) {
    suppress_stage_music(0, 1);
    if (!song_played) {
        target_song = sound_play(sound_get("targets"), true, 0);
        song_played = true;
    } 
    } else {
    sound_stop(target_song);
    song_played = false;
    }  
}

if (btt && music_timer <= 90) {
    music_timer++;
    if (jump_down) {
    if (!music_changed && !music_changed_alt) {
        experimental_music = !experimental_music;
        music_changed = true;
    }
    } else if (!music_changed_alt) {
    music_changed = false;
    }
    var char = self;
    if ("is_ai" in self) {
        with (oPlayer) if (self != char) {
        if (jump_down) {
            if (!other.music_changed_alt && !other.music_changed) {
                other.experimental_music = !other.experimental_music;
                other.music_changed_alt = true;
            }
        } else if (!other.music_changed) {
            other.music_changed_alt = false;
        }
    }
}
    music_text = true;
} else {
    music_text = false;
}

#define room_add(_room_id,room_data) //Adds a new room to the scene
with obj_stage_article if num == 5 {
	var _room_id_ind = array_find_index(array_room_ID,_room_id);
	if _room_id_ind == - 1 {
	    if debug print_debug("[RM] Adding... "+string(_room_id));
	    array_push(array_room_data,room_data);
	    array_push(array_room_ID,_room_id);
	} else {
	    array_room_data[_room_id_ind] = room_data;
	    array_room_ID[_room_id_ind] = _room_id;
	}
}
