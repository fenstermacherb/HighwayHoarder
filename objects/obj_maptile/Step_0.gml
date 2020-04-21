/// @description Insert description here
// You can write your code in this editor



if(!position_meeting(0,1280,obj_maptile))
{
	instance_create_depth(bbox_left,bbox_bottom-global.mapspd,3,obj_maptile);
} 



y = y - global.mapspd;

if bbox_bottom < 10 {
	instance_destroy(self);
	show_debug_message("Maptile destroyed");
}

