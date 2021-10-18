if (my_hitboxID.attack == AT_FSPECIAL){
         if (other.spr_dir == -1){
		 sound_play(sound_get("mantle"));
		 other.spr_dir = 1;
		 other.hsp = -hsp;
		 }
		 else{
		 sound_play(sound_get("mantle"));
		 other.spr_dir = -1;
		 other.hsp = hsp;
		 }
    }
	
if (attack == AT_DSPECIAL){
    if(window < 9){
	hit_player_obj.should_make_shockwave = false;
	}
	else{
	hit_player_obj.should_make_shockwave = true;
	}
}