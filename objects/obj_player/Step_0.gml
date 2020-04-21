/// @description Insert description here
// You can write your code in this editor

//OG controls

changedir = mouse_check_button_pressed(mb_left);

hspd = hspd + vel;

//loss conditional

if (place_meeting(x,y,obj_obstacle)){
//	room_restart();
	instance_change(obj_player_dead,true);
}

//change directional controls

if(changedir){
	vel = vel * -1;
	audio_play_sound(au_switch,5,false);
}

if(hspd > maxspd){
	hspd = maxspd;
}

if(hspd < -maxspd){
	hspd = -maxspd;
}

//Sprite assignment

if (sign(vel) == 1){
	sprite_index = spr_player_dr;
}

if (sign(vel) == -1){
	sprite_index = spr_player_dl;
}

// Actual map controller

x = x + hspd;

