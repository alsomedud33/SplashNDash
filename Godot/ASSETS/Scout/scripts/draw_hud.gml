//draw_hud - the x position of your HUD element is 48*(i-1)

var temp_color = c_white;
if (move_cooldown[AT_NSPECIAL] > 0) temp_color = c_gray;
draw_sprite_ext(sprite_get("the_knife"), 0, temp_x+51, temp_y-12, 2, 2, 0, temp_color, 1);

var temp_color = c_white;
if (move_cooldown[AT_FSPECIAL] > 0) temp_color = c_gray;
draw_sprite_ext(sprite_get("found_my_ball"), 0, temp_x+23, temp_y-8, 2, 2, 0, temp_color, 1);

var temp_color = c_white;
if (move_cooldown[AT_DSPECIAL] > 0) temp_color = c_gray;
draw_sprite_ext(sprite_get("crit_hit"), 0, temp_x+83, temp_y-12, 2, 2, 0, temp_color, 1);