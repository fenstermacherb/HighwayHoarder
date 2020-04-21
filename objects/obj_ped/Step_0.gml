/// @description Insert description here
// You can write your code in this editor

y = y + movespd - global.mapspd;

if (movespd < 0) {
	sprite_index = spr_ped_u;
} else {
	sprite_index = spr_ped_d;
}

if (place_meeting(x,y,obj_ped) || place_meeting(x,y,obj_ped)){
	movespd = movespd * -1;
}

if bbox_bottom < 10 {
	instance_destroy(self);
	show_debug_message("Destroyed ped");
}
