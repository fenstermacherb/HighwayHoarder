/// @description Insert description here
// You can write your code in this editor
var _margin = 32;

draw_set_font(Munro);


var swidth = display_get_gui_width();
var sheight = display_get_gui_height();

draw_sprite_stretched(spr_guitp, 0, 0,8,_margin,_margin);

draw_set_color(c_black);
draw_text(_margin + 16 + 0,0, global.tp)
draw_set_color(c_white);
draw_text(_margin + 18,2, global.tp);



