/// @description Insert description here
// You can write your code in this editor

y = y + drive_spd;

if bbox_bottom < 0 {
	instance_destroy(self);
}

if bbox_top > 1280 {
	instance_destroy(self);
}

