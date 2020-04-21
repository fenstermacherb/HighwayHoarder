/// @description ped spawner
// You can write your code in this editor

spawnpoint = choose(80,112,144,688,656,624);
instance_create_depth(spawnpoint,1214,-3,obj_ped);
alarm[6] = irandom_range(30,60);