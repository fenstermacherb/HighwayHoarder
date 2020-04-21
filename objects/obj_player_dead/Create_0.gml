/// @description Insert description here
// You can write your code in this editor

vel = 0;
hspd = 0;
maxspd = 4;
newhighscore = false;
global.mapspd = 0;
with (obj_camera) follow = other.id;
alarm[0] = 60;
alarm[1] = 120
audio_stop_sound(au_step);
audio_play_sound(au_death,6,false);

obj_transition.playeralive = false;

w = display_get_gui_width();
h = display_get_gui_height();
h_half = h / 2;
w_half = w / 2;
percent = 1;

ini_open("localgamestats.ini");
highscore = ini_read_real("Player","Score",0);
if (global.tp > highscore) {
	newhighscore = true;
	ini_write_real("Player","Score",global.tp);
}
ini_close();

// array of results
desc[0] = "Uh oh..."
desc[1] = "Time to head to the store."
desc[5] = "Economically friendly"
desc[10] = "Just an average grocery run"
desc[20] = "Taco Tuesday ready!"
desc[25] = "The head of the household"
desc[30] = "Wholesale bargain hunter"
desc[35] = "Lil' doomsday prepper!"
desc[40] = "Oh god, you're THAT shopper"
desc[45] = "You have a hoarding issue."
desc[50] = "Part of the problem!"
desc[100] = "Stop it Karen."

var _temp = global.tp
if (desc[_temp] == 0){
	while (desc[_temp] == 0){
		_temp--
	}
}
displaymsg = desc[_temp];