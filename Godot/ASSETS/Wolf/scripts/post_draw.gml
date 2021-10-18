//looking cool joker

if (falco) {
	if (!easter_egg_set && easter_egg_timer == 91) {
		//init
		walk_speed = 4;
		walk_accel = 0.5;
		walk_turn_time = 6;
		initial_dash_time = 10;
		initial_dash_speed = 7;
		dash_speed = 6;
		dash_turn_time = 10;
		dash_turn_accel = 1.5;
		dash_stop_time = 4;
		dash_stop_percent = 0.35; //the value to multiply your hsp by when going into idle from dash or dashstop
		ground_friction = 0.8;

		jump_start_time = 3;
		jump_speed = 16;
		short_hop_speed = 10;
		djump_speed = 17;
		leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
		max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
		air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
		jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
		air_accel = .3;
		prat_fall_accel = 0.85; //multiplier of air_accel while in pratfall
		air_friction = 0.06;
		double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
		walljump_hsp = 6;
		walljump_vsp = 14;
		walljump_time = 50;
		wall_frames = 2;
		max_fall = 14; //maximum fall speed without fastfalling
		fast_fall = 17; //fast fall speed
		gravity_speed = 0.90;
		hitstun_grav = 0.6;
		knockback_adj = 100/75; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
		moonwalk_accel = 0.75;

		prat_land_time = 3;
		wave_land_time = 6;
		wave_land_adj = 2; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
		wave_friction = .04; //grounded deceleration when wavelanding

		//bair
		set_attack_value(AT_BAIR, AG_CATEGORY, 1);
		set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
		set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 4);
		set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
		set_attack_value(AT_BAIR, AG_LANDING_LAG, 7);
		set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

		set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 13);
		set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_BAIR, 1, AG_WINDOW_VSPEED, -1);

		set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 5);
		set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
		set_window_value(AT_BAIR, 2, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_BAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

		set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 1);
		set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 10);
		set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);

		set_window_value(AT_BAIR, 4, AG_WINDOW_TYPE, 1);
		set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 10);
		set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 3);


		set_num_hitboxes(AT_BAIR, 2);

		set_hitbox_value(AT_BAIR, 1, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 5);
		set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -30);
		set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -25);
		set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 60);
		set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 50);
		set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 10);
		set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 15);
		set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 45);
		set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 5);
		set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 1);
		set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 10);
		set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, -32);
		set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
		set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
		set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 6);

		set_hitbox_value(AT_BAIR, 2, HG_PARENT_HITBOX, 2);
		set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 3);
		set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 10);
		set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -30);
		set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -25);
		set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 60);
		set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 50);
		set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 5);
		set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 5);
		set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 45);
		set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 5);
		set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, .4);
		set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 5);
		set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, .25);
		set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, -32);
		set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
		set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
		set_hitbox_value(AT_BAIR, 2, HG_ANGLE_FLIPPER, 6);

		//dair
		set_attack_value(AT_DAIR, AG_CATEGORY, 1);
		set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
		set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 4);
		set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
		set_attack_value(AT_DAIR, AG_LANDING_LAG, 10);
		set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

		set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 2);
		set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, -1);

		set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 10);
		set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
		set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

		set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
		set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 10);
		set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);

		set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 1);
		set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 2);
		set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 3);


		set_num_hitboxes(AT_DAIR, 2);

		set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 3);
		set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 5);
		set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 0);
		set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -5);
		set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 50);
		set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 30);
		set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 10);
		set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 15);
		set_hitbox_value(AT_DAIR, 1, HG_ANGLE,270);
		set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 8);
		set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 1);
		set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 15);
		set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, -32);
		set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
		set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
		set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 6);

		set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 2);
		set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 3);
		set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 5);
		set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 0);
		set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, 15);
		set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 80);
		set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 50);
		set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 9);
		set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 13);
		set_hitbox_value(AT_DAIR, 2, HG_ANGLE,270);
		set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 5);
		set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 1);
		set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 5);
		set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, -32);
		set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
		set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
		set_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER, 6);

		
		//dattack
		set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
		set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 2);
		set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack"));
		set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

		set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 11);
		set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
		set_window_value(AT_DATTACK, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .04);
		set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

		set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 26);
		set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 1);
		set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED,4);
		set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
		set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);
		set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);


		set_num_hitboxes(AT_DATTACK, 1);

		set_hitbox_value(AT_DATTACK, 1, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 1);
		set_hitbox_value(AT_DATTACK, 1, HG_WINDOW_CREATION_FRAME, 5);
		set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 10);
		set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -32);
		set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 64);
		set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 64);
		set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 10);
		set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 10);
		set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 361);
		set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 9);
		set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, .3);
		set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 8);
		set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
		set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
		set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
		set_hitbox_value(AT_DATTACK, 1, HG_HIT_LOCKOUT, 5);

		//dspecial
		set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
		set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
		set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_DSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
		set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

		set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 6);
		set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED, 0);
		set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
		set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get("fox_shine"));
		set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.2);
		set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HITPAUSE_FRAME, 1);

		set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 15);
		set_window_value(AT_DSPECIAL, 2, AG_WINDOW_INVINCIBILITY, 2);
		set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 6);
		set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
		set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 5);
		set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 5);
		set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
		set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.2);

		set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 4);
		set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
		set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 5);
		set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 5);
		set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 9);
		set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_WHIFFLAG, 0);


		set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 4);
		set_window_value(AT_DSPECIAL, 4, AG_WINDOW_INVINCIBILITY, 2);
		set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 9);
		set_window_value(AT_DSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
		set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
		set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);

		set_num_hitboxes(AT_DSPECIAL, 1);

		set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 1);
		set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 0);
		set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -30);
		set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 70);
		set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 70);
		set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
		set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 4);
		set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 9);
		set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 3);
		set_hitbox_value(AT_DSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.8);
		set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 45);
		set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 20);

		//dstrong
		set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
		set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 4);
		set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
		set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
		set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

		set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 2);
		set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, sound_get("fox_dsmash"));
		set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX_FRAME, 2);

		set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 10);
		set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, sound_get("fox_dsmash"));

		set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);
		set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 12);
		set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 1);
		set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

		set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 1);
		set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 8);
		set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 3);

		set_num_hitboxes(AT_DSTRONG, 4);

		set_hitbox_value(AT_DSTRONG, 1, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
		set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 5);
		set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -3);
		set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 15);
		set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 30);
		set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 33);
		set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 2);
		set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 10);
		set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 14);
		set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 361);
		set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 4);
		set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
		set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 15);
		set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .9);
		set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 13);
		set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 10);
		set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
		set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_DSTRONG, 1, HG_HITSTUN_MULTIPLIER, 1.0);

		set_hitbox_value(AT_DSTRONG, 2, HG_PARENT_HITBOX, 0);
		set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
		set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 5);
		set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -3);
		set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 45);
		set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 30);
		set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 33);
		set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 2);
		set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 9);
		set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 16);
		set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 361);
		set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 4);
		set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 1.1);
		set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 15);
		set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, .9);
		set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 13);
		set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT_X_OFFSET, 10);
		set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
		set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_DSTRONG, 2, HG_HITSTUN_MULTIPLIER, 1.0);

		set_hitbox_value(AT_DSTRONG, 3, HG_PARENT_HITBOX, 0);
		set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 3);
		set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW_CREATION_FRAME, 7);
		set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 3);
		set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -3);
		set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, -45);
		set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 30);
		set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 33);
		set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 2);
		set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 9);
		set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 14);
		set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 361);
		set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 4);
		set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 1.1);
		set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 15);
		set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, .9);
		set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 13);
		set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT_X_OFFSET, 10);
		set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
		set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_DSTRONG, 3, HG_HITSTUN_MULTIPLIER, 1.0);

		set_hitbox_value(AT_DSTRONG, 4, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 3);
		set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW_CREATION_FRAME, 7);
		set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 3);
		set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -3);
		set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, -15)
		set_hitbox_value(AT_DSTRONG, 4, HG_WIDTH, 30);
		set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 33);
		set_hitbox_value(AT_DSTRONG, 4, HG_SHAPE, 2);
		set_hitbox_value(AT_DSTRONG, 4, HG_PRIORITY, 10);
		set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 12);
		set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 361);
		set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 4);
		set_hitbox_value(AT_DSTRONG, 4, HG_KNOCKBACK_SCALING, 1.1);
		set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 15);
		set_hitbox_value(AT_DSTRONG, 4, HG_HITPAUSE_SCALING, .9);
		set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT, 13);
		set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT_X_OFFSET, 10);
		set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
		set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_DSTRONG, 4, HG_HITSTUN_MULTIPLIER, 1.0);


		//dtilt
		set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
		set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

		set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 5);
		set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
		set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 1);

		set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 7);
		set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);

		set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
		set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 7);
		set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);
		set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 6);

		set_num_hitboxes(AT_DTILT,1);

		set_hitbox_value(AT_DTILT, 1, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 2);
		set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 20);
		set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -10);
		set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 45);
		set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 42);
		set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 2);
		set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 10);
		set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 7);
		set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 30);
		set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 9);
		set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .2);
		set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 5);
		set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .35);
		set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 30);
		set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, 10);
		set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

		//fair
		set_attack_value(AT_FAIR, AG_CATEGORY, 1);
		set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
		set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 2);
		set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
		set_attack_value(AT_FAIR, AG_LANDING_LAG, 7);
		set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

		set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 9);
		set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 0);
		set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
		set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 1);

		set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 25);
		set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
		set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_FAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
		set_window_value(AT_FAIR, 2, AG_WINDOW_SFX_FRAME, 1);

		set_num_hitboxes(AT_FAIR,1);

		set_hitbox_value(AT_FAIR, 1, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_FAIR, 1, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 3);
		set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 48);
		set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -30);
		set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 60);
		set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 100);
		set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 10);
		set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 9);
		set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 60);
		set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 8);
		set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .2);
		set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 6);
		set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .25);
		set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
		set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
		set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));



		//fspecial
		set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
		set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
		set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 4);
		set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
		set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

		set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 20);
		set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
		set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
		set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED, 1);
		set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, sound_get("fox_illusion1"));
		set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 0);

		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 5);
		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 30);
		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, -10);
		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, sound_get("fox_illusion2"));
		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX_FRAME, 0);

		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 7);
		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 4);
		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, -3);
		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 5);
		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 5);

		set_num_hitboxes(AT_FSPECIAL, 2);

		set_hitbox_value(AT_FSPECIAL, 1, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 5);
		set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 18);
		set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -30);
		set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 80);
		set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 50);
		set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 9);
		set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 6);
		set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 45);
		set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
		set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .3);
		set_hitbox_value(AT_FSPECIAL, 1, HG_EFFECT, 6);
		set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 5);
		set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_absa_singlezap2"));
		set_hitbox_value(AT_FSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);

		set_hitbox_value(AT_FSPECIAL, 2, HG_PARENT_HITBOX, 2);
		set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 2);
		set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 3);
		set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 3);
		set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 18);
		set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -30);
		set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 80);
		set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 50);
		set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 10);
		set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 15);
		set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 330);
		set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 10);
		set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, .3);
		set_hitbox_value(AT_FSPECIAL, 2, HG_EFFECT, 6);
		set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 15);
		set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, .5);
		set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));
		set_hitbox_value(AT_FSPECIAL, 2, HG_IGNORES_PROJECTILES, 1);

		//fstrong
		set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
		set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 4);
		set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
		set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
		set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

		set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 20);
		set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
		set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);

		set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 6);
		set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);
		set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, 1);
		set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED_TYPE, 2);
		set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, sound_get("fox_fsmash"));

		set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
		set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 5);
		set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 2);
		set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

		set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
		set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 12);
		set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 3);
		set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 10);

		set_num_hitboxes(AT_FSTRONG,1);

		set_hitbox_value(AT_FSTRONG, 1, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 5);
		set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 18);
		set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -31);
		set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 84);
		set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 70);
		set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 10);
		set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 15);
		set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 45);
		set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 8);
		set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
		set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 18);
		set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 1.0);
		set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
		set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

		//ftilt
		set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
		set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

		set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 8);
		set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);

		set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 5);
		set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
		set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_FTILT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

		set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 1);
		set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 10);
		set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);

		set_num_hitboxes(AT_FTILT,1);

		set_hitbox_value(AT_FTILT, 1, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 3);
		set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 16);
		set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -25);
		set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 87);
		set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 34);
		set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 2);
		set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 10);
		set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 11);
		set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 40);
		set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 10);
		set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, 0.3);
		set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 6);
		set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .6);
		set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
		set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

		//jab
		set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
		set_attack_value(AT_JAB, AG_NUM_WINDOWS, 6);
		set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

		set_window_value(AT_JAB, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 36);
		set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_JAB, 1, AG_WINDOW_SFX, sound_get("fox_grab"));

		set_window_value(AT_JAB, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 16);
		set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 4);
		set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);
		set_window_value(AT_JAB, 2, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_JAB, 2, AG_WINDOW_SFX, sound_get("fox_laser_load"));
		set_window_value(AT_JAB, 2, AG_WINDOW_SFX_FRAME, 12);

		set_window_value(AT_JAB, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 2);
		set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 5);
		set_window_value(AT_JAB, 2, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_JAB, 2, AG_WINDOW_SFX, sound_get("fox_throw"));

		set_window_value(AT_JAB, 4, AG_WINDOW_TYPE, 1);
		set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 3);
		set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 4);
		set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_JAB, 4, AG_WINDOW_SFX, sound_get("fox_throw"));

		set_window_value(AT_JAB, 5, AG_WINDOW_TYPE, 1);
		set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 5);
		set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 4);
		set_window_value(AT_JAB, 5, AG_WINDOW_HAS_SFX, 0);
		set_window_value(AT_JAB, 5, AG_WINDOW_SFX, sound_get("fox_laser"));

		set_window_value(AT_JAB, 6, AG_WINDOW_TYPE, 1);
		set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 5);
		set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 5);
		set_window_value(AT_JAB, 6, AG_WINDOW_HAS_SFX, 0);
		set_window_value(AT_JAB, 6, AG_WINDOW_SFX, sound_get("fox_laser"));

		set_num_hitboxes(AT_JAB, 5);

		set_hitbox_value(AT_JAB, 1, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, 1);
		set_hitbox_value(AT_JAB, 1, HG_WINDOW, 1);
		set_hitbox_value(AT_JAB, 1, HG_WINDOW_CREATION_FRAME, 6);
		set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 2);
		set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 40);
		set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -35);
		set_hitbox_value(AT_JAB, 1, HG_WIDTH, 85);
		set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 85);
		set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 10);
		set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 1);
		set_hitbox_value(AT_JAB, 1, HG_ANGLE, 90);
		set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 10);
		set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 20);
		set_hitbox_value(AT_JAB, 1, HG_EXTRA_HITPAUSE, 0);
		set_hitbox_value(AT_JAB, 1, HG_SDI_MULTIPLIER, 0);

		set_hitbox_value(AT_JAB, 2, HG_PARENT_HITBOX, 2);
		set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_JAB, 2, HG_WINDOW, 3);
		set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 3);
		set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 0);
		set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -90);
		set_hitbox_value(AT_JAB, 2, HG_WIDTH, 100);
		set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 42);
		set_hitbox_value(AT_JAB, 2, HG_SHAPE, 2);
		set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 10);
		set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 5);
		set_hitbox_value(AT_JAB, 2, HG_ANGLE, 75);
		set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 9);
		set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, .5);
		set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 5);
		set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, .35);
		set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_X_OFFSET, 30);
		set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_Y_OFFSET, 10);
		set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
		//nair
		set_attack_value(AT_NAIR, AG_CATEGORY, 1);
		set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
		set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 2);
		set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
		set_attack_value(AT_NAIR, AG_LANDING_LAG, 6);
		set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

		set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 7);
		set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
		set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 2);

		set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 30);
		set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);

		set_num_hitboxes(AT_NAIR,2);

		set_hitbox_value(AT_NAIR, 1, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 1);
		set_hitbox_value(AT_NAIR, 1, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 19);
		set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -30);
		set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 80);
		set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 80);
		set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 10);
		set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 12);
		set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 361);
		set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 7);
		set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, .4);
		set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 7);
		set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, .2);
		set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 20);
		set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -20);
		set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

		set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 2);
		set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
		set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 10);
		set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -30);
		set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 70);
		set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 70);
		set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 5);
		set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 8);
		set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 361);
		set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 6);
		set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 5);
		set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, 302);
		set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

		//nspecial
		set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
		set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
		set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 6);
		set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 1);
		set_attack_value(AT_NSPECIAL, AG_LANDING_LAG, 4);
		set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
		set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
		set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 15);
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 0);
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, sound_get("fox_laser_load"));
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 0);

		set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 15);
		set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, sound_get("fox_laser"));
		set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX_FRAME, 1);

		set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
		set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 18);
		set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 1);

		set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 1);
		set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 1);
		set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 0);


		set_num_hitboxes(AT_NSPECIAL, 2);

		set_hitbox_value(AT_NSPECIAL, 1, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
		set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 35);
		set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 40);
		set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, 2);
		set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 90);
		set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 60);
		set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
		set_hitbox_value(AT_NSPECIAL, 1, HG_FORCE_FLINCH, 0);
		set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
		set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 7);
		set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 60);
		set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
		set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1.3);
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("nspecial_proj"));
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .5);
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 14);

		set_hitbox_value(AT_NSPECIAL, 2, HG_PARENT_HITBOX, 2);
		set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 3);
		set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 3);
		set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 30);
		set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -25);
		set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 60);
		set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 34);
		set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 2);
		set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 10);
		set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 5);
		set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 70);
		set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 10);
		set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.3);
		set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 6);
		set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, .6);
		set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, 16);
		set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

		//taunt

		//uair
		set_attack_value(AT_UAIR, AG_CATEGORY, 1);
		set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
		set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
		set_attack_value(AT_UAIR, AG_LANDING_LAG, 7);
		set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

		set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 3);
		set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);

		set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 4);
		set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
		set_window_value(AT_UAIR, 2, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_UAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

		set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
		set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 8);
		set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);
		set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 4);
		set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_UAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

		set_num_hitboxes(AT_UAIR,2)

		set_hitbox_value(AT_UAIR, 1, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 3);
		set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 4);
		set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -60);
		set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 85);
		set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 54);
		set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 10);
		set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 12);
		set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
		set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 10);
		set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, .5);
		set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 5);
		set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, 0);
		set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
		set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
		set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 4);


		//uspecial
		set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
		set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
		set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 2);
		set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 1);
		set_attack_value(AT_USPECIAL, AG_LANDING_LAG, 24);
		set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
		set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
		set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
		set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

		set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 20);
		set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 8);
		set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
		set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
		set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED, 0);
		set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, 0);
		set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, sound_get("fox_fire1"));
		set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
		set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
		set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

		set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 7);
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 20);
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 9);
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, sound_get("fox_fire3"));

		set_num_hitboxes(AT_USPECIAL, 9)

		set_hitbox_value(AT_USPECIAL, 1, HG_PARENT_HITBOX, 0);
		set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, -1);
		set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 1);
		set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 3);
		set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -32);
		set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 90);
		set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 90);
		set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 2);
		set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 10);
		set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 1.3);
		set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 2);
		set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 3);
		set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 5);
		set_hitbox_value(AT_USPECIAL, 1, HG_SDI_MULTIPLIER, 0);
		set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
		set_hitbox_value(AT_USPECIAL, 1, HG_HITSTUN_MULTIPLIER, 2);
		set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 302);
		set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

		set_hitbox_value(AT_USPECIAL, 2, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, -1);
		set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 1);
		set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 8);
		set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 3);
		set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -32);

		set_hitbox_value(AT_USPECIAL, 3, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, -1);
		set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 1);
		set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 16);
		set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 3);
		set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -32);

		set_hitbox_value(AT_USPECIAL, 4, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, -1);
		set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 1);
		set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 24);
		set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 3);
		set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -32);
		set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE_FLIPPER, 1);

		set_hitbox_value(AT_USPECIAL, 5, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, -1);
		set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 1);
		set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW_CREATION_FRAME, 32);
		set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 3);
		set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -32);
		set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE_FLIPPER, 1);

		set_hitbox_value(AT_USPECIAL, 6, HG_PARENT_HITBOX, 0);
		set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_GROUP, -1);
		set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 2);
		set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW_CREATION_FRAME, 0);
		set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 3);
		set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, -32);
		set_hitbox_value(AT_USPECIAL, 6, HG_ANGLE, 90);
		set_hitbox_value(AT_USPECIAL, 6, HG_WIDTH, 90);
		set_hitbox_value(AT_USPECIAL, 6, HG_HEIGHT, 90);
		set_hitbox_value(AT_USPECIAL, 6, HG_SHAPE, 1);
		set_hitbox_value(AT_USPECIAL, 6, HG_PRIORITY, 10);
		set_hitbox_value(AT_USPECIAL, 6, HG_DAMAGE, 2);
		set_hitbox_value(AT_USPECIAL, 6, HG_ANGLE_FLIPPER, 0);
		set_hitbox_value(AT_USPECIAL, 6, HG_BASE_KNOCKBACK, 10);
		set_hitbox_value(AT_USPECIAL, 6, HG_BASE_HITPAUSE, 5);
		set_hitbox_value(AT_USPECIAL, 6, HG_SDI_MULTIPLIER, 0);
		set_hitbox_value(AT_USPECIAL, 6, HG_KNOCKBACK_SCALING, 0);
		set_hitbox_value(AT_USPECIAL, 6, HG_HITSTUN_MULTIPLIER, 2);
		set_hitbox_value(AT_USPECIAL, 6, HG_VISUAL_EFFECT, 302);
		set_hitbox_value(AT_USPECIAL, 6, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

		set_hitbox_value(AT_USPECIAL, 7, HG_PARENT_HITBOX, 0);
		set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_GROUP, -1);
		set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW, 2);
		set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW_CREATION_FRAME, 4);
		set_hitbox_value(AT_USPECIAL, 7, HG_LIFETIME, 3);
		set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_Y, -32);
		set_hitbox_value(AT_USPECIAL, 7, HG_ANGLE, 90);
		set_hitbox_value(AT_USPECIAL, 7, HG_WIDTH, 90);
		set_hitbox_value(AT_USPECIAL, 7, HG_HEIGHT, 90);
		set_hitbox_value(AT_USPECIAL, 7, HG_SHAPE, 2);
		set_hitbox_value(AT_USPECIAL, 7, HG_PRIORITY, 10);
		set_hitbox_value(AT_USPECIAL, 7, HG_DAMAGE, 2);
		set_hitbox_value(AT_USPECIAL, 7, HG_ANGLE_FLIPPER, 0);
		set_hitbox_value(AT_USPECIAL, 7, HG_BASE_KNOCKBACK, 10);
		set_hitbox_value(AT_USPECIAL, 7, HG_BASE_HITPAUSE, 5);
		set_hitbox_value(AT_USPECIAL, 7, HG_SDI_MULTIPLIER, 0);
		set_hitbox_value(AT_USPECIAL, 7, HG_KNOCKBACK_SCALING, 0);
		set_hitbox_value(AT_USPECIAL, 7, HG_HITSTUN_MULTIPLIER, 2);
		set_hitbox_value(AT_USPECIAL, 7, HG_VISUAL_EFFECT, 302);
		set_hitbox_value(AT_USPECIAL, 7, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

		set_hitbox_value(AT_USPECIAL, 8, HG_PARENT_HITBOX, 0);
		set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_GROUP, -1);
		set_hitbox_value(AT_USPECIAL, 8, HG_WINDOW, 2);
		set_hitbox_value(AT_USPECIAL, 8, HG_WINDOW_CREATION_FRAME, 8);
		set_hitbox_value(AT_USPECIAL, 8, HG_LIFETIME, 3);
		set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_Y, -32);
		set_hitbox_value(AT_USPECIAL, 8, HG_ANGLE, 90);
		set_hitbox_value(AT_USPECIAL, 8, HG_WIDTH, 90);
		set_hitbox_value(AT_USPECIAL, 8, HG_HEIGHT, 90);
		set_hitbox_value(AT_USPECIAL, 8, HG_SHAPE, 2);
		set_hitbox_value(AT_USPECIAL, 8, HG_PRIORITY, 10);
		set_hitbox_value(AT_USPECIAL, 8, HG_DAMAGE, 1);
		set_hitbox_value(AT_USPECIAL, 8, HG_ANGLE_FLIPPER, 0);
		set_hitbox_value(AT_USPECIAL, 8, HG_BASE_KNOCKBACK, 10);
		set_hitbox_value(AT_USPECIAL, 8, HG_BASE_HITPAUSE, 5);
		set_hitbox_value(AT_USPECIAL, 8, HG_SDI_MULTIPLIER, 0);
		set_hitbox_value(AT_USPECIAL, 8, HG_KNOCKBACK_SCALING, 0);
		set_hitbox_value(AT_USPECIAL, 8, HG_HITSTUN_MULTIPLIER, 2);
		set_hitbox_value(AT_USPECIAL, 8, HG_VISUAL_EFFECT, 302);
		set_hitbox_value(AT_USPECIAL, 8, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

		set_hitbox_value(AT_USPECIAL, 9, HG_PARENT_HITBOX, 0);
		set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_GROUP, 1);
		set_hitbox_value(AT_USPECIAL, 9, HG_WINDOW, 2);
		set_hitbox_value(AT_USPECIAL, 9, HG_WINDOW_CREATION_FRAME, 13);
		set_hitbox_value(AT_USPECIAL, 9, HG_LIFETIME, 38);
		set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_Y, 0);
		set_hitbox_value(AT_USPECIAL, 9, HG_WIDTH, 100);
		set_hitbox_value(AT_USPECIAL, 9, HG_HEIGHT, 100);
		set_hitbox_value(AT_USPECIAL, 9, HG_SHAPE, 0);
		set_hitbox_value(AT_USPECIAL, 9, HG_PRIORITY, 10);
		set_hitbox_value(AT_USPECIAL, 9, HG_DAMAGE, 5);
		set_hitbox_value(AT_USPECIAL, 9, HG_ANGLE, 90);
		set_hitbox_value(AT_USPECIAL, 9, HG_BASE_KNOCKBACK, 12);
		set_hitbox_value(AT_USPECIAL, 9, HG_BASE_HITPAUSE, 15);
		set_hitbox_value(AT_USPECIAL, 9, HG_KNOCKBACK_SCALING, 0.2);
		set_hitbox_value(AT_USPECIAL, 9, HG_VISUAL_EFFECT, 302);
		set_hitbox_value(AT_USPECIAL, 9, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

		//ustrong
		set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
		set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
		set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
		set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

		set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 13);
		set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);

		set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 10);
		set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);
		set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("fox_usmash"));

		set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
		set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 18);
		set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);
		set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

		set_num_hitboxes(AT_USTRONG,2);

		set_hitbox_value(AT_USTRONG, 1, HG_PARENT_HITBOX, 0);
		set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, -1);
		set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 3);
		set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -32);
		set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 100);
		set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 75);
		set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 50);
		set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 2);
		set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 10);
		set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 6);
		set_hitbox_value(AT_USTRONG, 1, HG_ANGLE_FLIPPER, 0);
		set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 5);
		set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 5);
		set_hitbox_value(AT_USTRONG, 1, HG_SDI_MULTIPLIER, 0);
		set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0);
		set_hitbox_value(AT_USTRONG, 1, HG_HITSTUN_MULTIPLIER, 2);
		set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 302);
		set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

		set_hitbox_value(AT_USTRONG, 2, HG_PARENT_HITBOX, 0);
		set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 2);
		set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 6);
		set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 3);
		set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -51);
		set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 75);
		set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 102);
		set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 0);
		set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 10);
		set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 12);
		set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 75);
		set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 8);
		set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 1.2);
		set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 12);
		set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, .5);
		set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
		set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

		//utilt
		set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
		set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

		set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 7);
		set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
		set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 2);

		set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 7);
		set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);

		set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1);
		set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 7);
		set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 1);
		set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 5);

		set_num_hitboxes(AT_UTILT,1);

		set_hitbox_value(AT_UTILT, 1, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 3);
		set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 4);
		set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -39);
		set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 80);
		set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 96);
		set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 10);
		set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 5);
		set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 76);
		set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 7);
		set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .45);
		set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 8);
		set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .35);
		set_hitbox_value(AT_UTILT, 1, HG_HITSTUN_MULTIPLIER, 1.5);
		set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

		melee_activated = true;
		if (!falco) {
			sound_play(sound_get("fox_taunt"));
		}
		easter_egg_set = true;
	}

}

// Abyss Rune Support
if "abysspostdrawenabled" not in self abysspostdrawenabled = true; // tell buddy you have post draw code
if "abyssPostDrawing" in self && abyssPostDrawing abyssPostDraw(); // actually do post draw code
#define abyssPostDraw 
/// abyssPostDraw()
/// draws text and images the player recieved from the abyss buddy.
if ("abyss_postDrawArray" in self && ds_list_valid(abyss_postDrawArray))  {
    if (ds_list_size(abyss_postDrawArray) > 0) {
        for (var _i = 0; _i < ds_list_size(abyss_postDrawArray);_i++) {
            var _text = abyss_postDrawArray[| _i];
            if draw_get_halign() != _text[6] {
                draw_set_halign(_text[6]);
            }
            switch (_text[0]) {
                case 0:
                    draw_debug_text(floor(_text[1]),floor(_text[2]),(_text[3]));
                    break;
                case 1:
                    draw_sprite_ext(_text[3],_text[5],_text[1],_text[2],1,1,0,_text[4],1);
                    break;
                case 2:
                    draw_text_plus(floor(_text[1]),floor(_text[2]),string(_text[3]),floor(_text[5]),floor(_text[4]));
                    break;
                case 3:
                    if draw_get_font() != 1 draw_set_font(1);
                    draw_text_ext_color(floor(_text[1]),floor(_text[2]),string(_text[3]),16,floor(_text[5]),_text[4],_text[4],_text[4],_text[4], 1);
                    break;
                default:
                break;
            }
        }
    }
    //finished drawing, so clear the table for the next frame.
    ds_list_clear(abyss_postDrawArray);
}
#define draw_text_plus
/// draw_text_plus(x, y, text, font, color = c_white)
/// draws outlined text in any in-game font.

if draw_get_font() != argument[3] {
    draw_set_font(argument[3]);
}
draw_text_color(argument[0]+2,argument[1],argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1],argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]+2,argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]+2,argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1],argument[2],argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,1);