set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 11);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 6);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 0);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1); //frame1
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1); //frame2 hitbox1
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1); //frame3 hitbox2
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 1); //frame4 hitbox3
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);

set_window_value(AT_DSPECIAL, 5, AG_WINDOW_TYPE, 1); //frame5 hitbox4
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);

set_window_value(AT_DSPECIAL, 6, AG_WINDOW_TYPE, 1); //frame6 hitbox5
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);

set_window_value(AT_DSPECIAL, 7, AG_WINDOW_TYPE, 1); //frame7 hitbox6
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);

set_window_value(AT_DSPECIAL, 8, AG_WINDOW_TYPE, 1); //frame8-9
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_LENGTH, 13);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_CUSTOM_AIR_FRICTION, .1)

set_window_value(AT_DSPECIAL, 9, AG_WINDOW_TYPE, 1); //frame10-12 hitbox7
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_CUSTOM_AIR_FRICTION, .1)

set_window_value(AT_DSPECIAL, 10, AG_WINDOW_TYPE, 1); //frame13
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_CUSTOM_AIR_FRICTION, .1)

set_window_value(AT_DSPECIAL, 11, AG_WINDOW_TYPE, 1); //frame14 endlag
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 13);

set_num_hitboxes(AT_DSPECIAL, 7);

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, -3);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 78);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 68);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, .0);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 40);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSPECIAL, 1, HG_TECHABLE, 1);

set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, -3);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 78);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 68);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, .0);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 40);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSPECIAL, 2, HG_TECHABLE, 1);

set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, -3);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 78);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 68);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, .0);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 40);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSPECIAL, 3, HG_TECHABLE, 1);

set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, -3);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 78);
set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 68);
set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL, 4, HG_KNOCKBACK_SCALING, .0);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE, 40);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSPECIAL, 4, HG_TECHABLE, 1);

set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_X, -3);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSPECIAL, 5, HG_WIDTH, 78);
set_hitbox_value(AT_DSPECIAL, 5, HG_HEIGHT, 80);
set_hitbox_value(AT_DSPECIAL, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL, 5, HG_KNOCKBACK_SCALING, .0);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE, 40);
set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSPECIAL, 5, HG_TECHABLE, 1);

set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW, 7);
set_hitbox_value(AT_DSPECIAL, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_X, -3);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSPECIAL, 6, HG_WIDTH, 78);
set_hitbox_value(AT_DSPECIAL, 6, HG_HEIGHT, 68);
set_hitbox_value(AT_DSPECIAL, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL, 6, HG_KNOCKBACK_SCALING, .0);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL, 6, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DSPECIAL, 6, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_DSPECIAL, 6, HG_TECHABLE, 1);

set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_WINDOW, 9);
set_hitbox_value(AT_DSPECIAL, 7, HG_LIFETIME, 10);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_X, -3);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSPECIAL, 7, HG_WIDTH, 78);
set_hitbox_value(AT_DSPECIAL, 7, HG_HEIGHT, 68);
set_hitbox_value(AT_DSPECIAL, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_DAMAGE, 2);
set_hitbox_value(AT_DSPECIAL, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 7, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DSPECIAL, 7, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL, 7, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 7, HG_HIT_SFX, asset_get("sfx_blow_medium2"));