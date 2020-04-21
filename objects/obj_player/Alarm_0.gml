/// @description Insert description here
// You can write your code in this editor

var _placer = irandom_range(1,18)

if !place_meeting(112 + (32 * _placer), 1264, obj_obstacle){
	instance_create_depth(112 + (32 * _placer), 1264, -2, obj_pickup);
}

alarm[0] = 60;