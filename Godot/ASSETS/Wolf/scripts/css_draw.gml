var temp_x = x + 8;
var temp_y = y + 9;

patch_ver = "3.5";
patch_day = "Made by";
patch_month = "Xtra";

var num_alts = 16;
var alt_cur = get_player_color(player);



//Alt name init. var doesn't work with arrays lol

alt_name[0]  = "Default";
alt_name[1]  = "Brown";
alt_name[2]  = "Magenta";
alt_name[3]  = "Blue";
alt_name[4]  = "Green";
alt_name[5]  = "Orange";
alt_name[6]  = "Black";
alt_name[7]  = "Pink";
alt_name[8]  = "Dark";
alt_name[9]  = "Terminal Wolf";
alt_name[10] = "Brawl";
alt_name[11] = "Early Access";
alt_name[12] = "Wolf Fox";
alt_name[13] = "Terminal Fox";
alt_name[14] = "Melee Fox";
alt_name[15] = "Melee Falco";

// Wolf Normal
if (alt_cur != 10 and alt_cur != 13 and alt_cur != 14 and alt_cur != 15){
  draw_sprite_ext(sprite_get("cssextras"), 0, temp_x + 3, temp_y + 92, 1, 1, 0, c_white, 1);
}
// Wolf Brawl
if (alt_cur == 10){
  draw_sprite_ext(sprite_get("cssextras"), 2, temp_x + 3, temp_y + 92, 1, 1, 0, c_white, 1);
}
// Fox
if (alt_cur == 13 or alt_cur == 14){
  draw_sprite_ext(sprite_get("cssextras"), 1, temp_x + 3, temp_y + 92, 1, 1, 0, c_white, 1);
}
// Falco
if (alt_cur == 15){
  draw_sprite_ext(sprite_get("cssextras"), 3, temp_x + 3, temp_y + 92, 1, 1, 0, c_white, 1);
}


//Patch

draw_set_halign(fa_left);

textDraw(temp_x + 2, temp_y + 30, "medFont", c_white, 0, 1000, 1, true, 1, "VER. " + patch_ver);

textDraw(temp_x + 2, temp_y + 50, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);



//Alt


rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);

for(i = 0; i < num_alts; i++){
    var draw_color = (i == alt_cur) ? c_white : c_gray;
    var draw_x = temp_x + 2 + 10 * i;
    rectDraw(draw_x, temp_y + 137, draw_x + 7, temp_y + 140, draw_color);
}

draw_set_halign(fa_left);
textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur]);



#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)

draw_set_font(asset_get(argument[2]));

if argument[7]{ //outline. doesn't work lol
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}

draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);

return string_width_ext(argument[9], argument[4], argument[5]);



#define rectDraw(x1, y1, x2, y2, color)

draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);
