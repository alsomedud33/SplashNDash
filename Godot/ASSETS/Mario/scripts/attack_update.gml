//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_USPECIAL){
can_fast_fall = false
}

if (attack == AT_FSPECIAL){
    if(window == 2){
	   if (SideB_count == 1){
	   //nothing
	   }
	   else{
	   vsp = -5.0;
	   }
	}
   if(window == 4){
	  if(state == PS_ATTACK_AIR){
	     SideB_count = 1;
	     }
	  if(state == PS_ATTACK_GROUND){
	     SideB_count = 0;
	     }
	}
   if (state == PS_ATTACK_GROUND and window < 2){
   SideB_count = 1
   }
}


if (attack == AT_DSPECIAL){
    if(special_down and window < 9 and window > 2){
	if (DownB_count == 1){
	//nothing
	}
	else{
	vsp = -3.8;
	}
   }

	if(window == 11){
	if(state == PS_ATTACK_AIR){
	DownB_count = 1;
	}
	if(state == PS_ATTACK_GROUND){
	DownB_count = 0;
	 }
	}
	if(left_down and state == PS_ATTACK_GROUND and window < 8){
	vsp = 0;
	hsp = -4;
	}
	if(right_down and state == PS_ATTACK_GROUND and window < 8){
	vsp = 0;
	hsp = 4;
	}
    can_move = true;
	can_fast_fall = false;
}
