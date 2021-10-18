hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 5;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 12;
dash_speed = 12;
dash_turn_time = 8;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .8;
moonwalk_accel = 1.4;

jump_start_time = 3;
jump_speed = 17;
short_hop_speed = 11;
djump_speed = 15;
leave_ground_max = 12; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 13; //the maximum hsp you can have when jumping from the ground
air_max_speed = 11; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 20; //maximum fall speed without fastfalling
fast_fall = 24; //fast fall speed
gravity_speed = 1;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 3; //normal landing frames
prat_land_time = 3;
wave_land_time = 6;
wave_land_adj = 2; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = sound_get("shoulder_l_cancel");
waveland_sound = sound_get("stick_flick");
jump_sound = sound_get("button_x");
djump_sound = sound_get("button_y");
air_dodge_sound = sound_get("shoulder_press");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//custom character interactions
enemykirby = undefined;
kirbyability = 16;
swallowed = 0;
newicon = 0;
tcoart = sprite_get("tcosketch");
trummelcodecneeded = false;
trummelcodec_id = noone;
currentcodecline = 0;

//rune support
abyssEnabled = false;
enum runes {A = 1,B = 2,C = 3,D = 4,E = 5,F = 6,G = 7,H = 8,I = 9,J = 10,K = 11,L = 12,M = 13,N = 14,O = 15}
runeA = false; runeB = false; runeC = false; runeD = false; runeE = false; runeF = false; runeG = false; runeH = false; runeI = false; runeJ = false; runeK = false; runeL = false; runeM = false; runeN = false; runeO = false; runesUpdated = false;
ab_hud_x = 0;
ab_hud_y = 0;

//abyssMods[1 to 15] = [type, description];
//types are: -1 - disabled
// 0 - object mod: Modifies a static object left behind after an attack.
// 1 - ranged mod: Modifies a projectile attack.
// 2 - hit mod: Modifies a direct physical interaction with an opponent.
// 3 - ability boost: Powers up a character attribute or action.
abyssMods = array_create(16,[-1,"Not Implemented."]);

// tier 1 rune
abyssMods[@ runes.A] = [2, "FTILT sends players backwards"];
abyssMods[@ runes.B] = [1, "NSPECIAL lasers act like falcos blaster now"];
abyssMods[@ runes.C] = [3, "Adds an extra midair jump"];
abyssMods[@ runes.D] = [3, "DSPECIAL gives a small boost in the air"];
abyssMods[@ runes.E] = [2, "DAIR has lower gravity"];
abyssMods[@ runes.F] = [2, "Adds a hitbox to TAUNT"];

// tier 2 rune
abyssMods[@ runes.G] = [2, "BAIR sweetspot sends opponents downwards"];
abyssMods[@ runes.H] = [2, "FSPECIAL sends opponents downwards"];
abyssMods[@ runes.I] = [2, "FSPECIAL stuns opponents on hit"];
abyssMods[@ runes.J] = [2, "Adds super armor to USPECIAL"];
abyssMods[@ runes.K] = [3, "Increased air acceleration"];

// tier 3 rune
abyssMods[@ runes.L] = [2, "JAB sends players farther at higher percentages"];
abyssMods[@ runes.M] = [2, "FAIR has lower gravity and sends opponents at a lower angle"];
abyssMods[@ runes.N] = [3, "USPECIAL charges much faster"];
abyssMods[@ runes.O] = [2, "DSPECIAL gives intangibility"];

feri_costume = sprite_get("feri_costume_wolf");

Hikaru_Title = "Shame Maker";

personaQuips[10] = "Take down this OP monster!";

battle_text = "*you feel a powerful presence";

arena_short_name = "The OP Menace";

// BTT 
get_btt_data = false;
btt = false;
song_played = false;
experimental_music = false;
music_text = true;
music_timer = 0;
music_changed = false;
target_song = 0;
music_changed_alt = false;

ult_wolf = false;

otto_bobblehead_sprite = sprite_get("hudbobblehead");
otto_bobblehead_body_sprite = sprite_get("hudbobblebody");

introTimer = -4;
//setting it to -4 should prevent the first few frames of the animation from being blocked by the screen opening. If it's slightly off, feel free to mess with it.
introTimer2 = 0;

falco = false;
easter_egg_timer = 0;
easter_egg_set = false;