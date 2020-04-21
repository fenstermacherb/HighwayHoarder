/// @description Insert description here
// You can write your code in this editor

y = y - global.mapspd;

if (place_meeting(x,y,obj_player) && !collected){
	global.tp++;
	image_index=0;
	collected = true;
}

if (collected){
	instance_destroy(self);
	audio_play_sound(au_pickup,5,false);
	show_debug_message("collected!");
}

if bbox_bottom < 10 {
	instance_destroy(self);
	show_debug_message("TP destroyed");
}
