/// @description Insert description here
// You can write your code in this editor



draw_set_font(fn_munro_sm);
draw_set_halign(fa_center);

draw_sprite(spr_title,image_index,gui_width/2,gui_height*.15)

draw_set_color(c_black);
draw_text(gui_width/2, gui_height-gui_margin, dev_ver)
draw_set_color(c_white);
draw_text(gui_width/2 -2, gui_height -(gui_margin)-2, dev_ver);

draw_set_font(fn_munro_med);
draw_set_color(c_black);
draw_text(gui_width/2, (gui_height*.75), phrase[phrasepick]);
draw_set_color(c_white);
draw_text(gui_width/2-2, (gui_height*.75)-2, phrase[phrasepick]);
