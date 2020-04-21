/// @description Insert description here
// You can write your code in this editor
var _margin = 32;

draw_set_font(Munro);

draw_set_font(fn_munro_med);
draw_sprite(spr_gameover,0,w_half,(percent*h + 64));
draw_set_halign(fa_center);

draw_set_color(c_black);
draw_text(w_half,(percent*h + (_margin * 7)),"Your Score: " + string(global.tp));
draw_text(w_half,(percent*h + (_margin * 10)),"Preparedness:");
draw_text(w_half,(percent*h + (_margin * 11)),string(displaymsg));
draw_set_color(c_white);
draw_text(w_half+2,(percent*h+2 + (_margin * 7)),"Your Score: " + string(global.tp));
draw_text(w_half+2,(percent*h+2 + (_margin * 10)),"Preparedness:");
draw_text(w_half+2,(percent*h+2 + (_margin * 11)),string(displaymsg));



if (newhighscore == true) {
	draw_set_color(c_black);
	draw_text(w_half,(percent*h + (_margin * 9)),"New Record!");
	draw_text(w_half,(percent*h + (_margin * 8)),"High Score: " + string(global.tp));
	draw_set_color(c_white);
	draw_text(w_half+2,(percent*h+2 + (_margin * 9)),"New Record!");
	draw_text(w_half+2,(percent*h+2 + (_margin * 8)),"High Score: " + string(global.tp));
} else {
	draw_set_color(c_black);
	draw_text(w_half,(percent*h + (_margin * 8)),"High Score: " + string(highscore));
	draw_set_color(c_white);
	draw_text(w_half+2,(percent*h+2 + (_margin * 8)),"High Score: " + string(highscore));
}