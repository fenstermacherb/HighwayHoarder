/// @description Insert description here
// You can write your code in this editor

drive_spd = 1.5;
image_speed = 0;

choosecar = irandom_range(0,8);

switch (choosecar) {
	case 0:
	case 1:
	case 2:
		sprite_index = spr_car;
		image_index = irandom_range(0,3)
		if bbox_top > 368 {
			image_index = irandom_range(4,7);
		}
		break;
	case 3:
	case 4:
		sprite_index = spr_minivan;
		image_index = irandom_range(0,2)
		if bbox_top > 368 {
			image_index = irandom_range(3,5);
		}
		break;
	case 5:
	case 6:
		sprite_index = spr_suv;
		image_index = irandom_range(0,2)
		if bbox_top > 368 {
			image_index = irandom_range(3,5);
		}
		break;
	case 7:
			sprite_index = spr_truck;
		image_index = 0
		if bbox_top > 368 {
			image_index = 1
		}
		break;
	case 8:
		sprite_index = spr_bus;
		image_index = 0
		if bbox_top > 368 {
			image_index = 1
		}
		break;
}




//Get car speed for other side

if bbox_top > 368 {
	drive_spd = -4.1;
}

//Get lane speed

if (bbox_left > 300 && bbox_right < 450) {
	drive_spd = drive_spd * 1.5;
}
