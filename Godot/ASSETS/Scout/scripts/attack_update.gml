//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();

}
if (attack == AT_NSPECIAL){

    if (window == 3){
	
	move_cooldown[AT_NSPECIAL] = 70;
	}
}

if (attack == AT_DSPECIAL){
    if (window == 2 && !was_parried){
        can_jump = false;
    }
    if (window == 4){
    move_cooldown[AT_DSPECIAL] = 200;
    }
    can_fast_fall = false;
    can_move = false
}

if (attack == AT_FSPECIAL){
	if (window == 3){	
	move_cooldown[AT_FSPECIAL] = 75;
	}
}

if (attack == AT_NAIR)
{
     if (window == 2 && has_hit)
     {
     vsp = vsp - 0.1;
     }
}

if (attack == AT_FAIR)
{
	if (window == 2 && has_hit && !hitpause)
	{
	vsp = -2;
	}
}