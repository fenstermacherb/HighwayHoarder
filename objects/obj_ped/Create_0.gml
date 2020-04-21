/// @description Insert description here
// You can write your code in this editor
direct = choose(1,-1);
movespd = .6 * direct;

if (place_meeting(x,y,obj_ped)){
	instance_destroy(self);
}