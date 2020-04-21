/// @description Insert description here
// You can write your code in this editor

vel = 0;
hspd = 0;
maxspd = 4;

global.tp = 0;

alarm[1] = 60;

global.mapspd = 3;

alarm[0] = 120;
audio_stop_sound(au_step);
audio_play_sound(au_step,4,true);