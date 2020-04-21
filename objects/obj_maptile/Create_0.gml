/// @description Insert description here
// You can write your code in this editor

//variable declarations




// collision for walls

instance_create_depth(bbox_left,bbox_top,-100,obj_wall)
instance_create_depth(bbox_right-64,bbox_top,-100,obj_wall)
instance_create_depth(bbox_left-64,bbox_top+640,-100,obj_wall)
instance_create_depth(bbox_right,bbox_top+640,-100,obj_wall)

show_debug_message("Created Maptile & Collision")

//score counter

//parked car generator (left)

for (var i = 0; i < 13; i++){
	show_debug_message(string(i));
	var _park = irandom_range(0,3);
	if (_park > 2){
		instance_create_depth(bbox_left + 192,bbox_top + 32 + (68 * i),-3,obj_parked)
	}	
}

//parked car generator (right)
for (var j = 0; j < 13; j++){
	show_debug_message(string(j));
	var _park = irandom_range(0,3);
	if (_park > 2){
		instance_create_depth(bbox_right - 192,bbox_top + 32 + (66 * j),-3,obj_parked)
	}	
}