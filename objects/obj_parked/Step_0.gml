/// @description Insert description here
// You can write your code in this editor
y = y - global.mapspd;

if bbox_bottom < 10 {
	instance_destroy(self);
	show_debug_message("Destroyed parked");
}
