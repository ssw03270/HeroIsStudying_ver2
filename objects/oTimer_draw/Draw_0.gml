/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_set_font(fTimer);
draw_set_halign(fa_middle);
draw_set_valign(fa_middle);
draw_text_color(x, y, _hour + ":" + _min + ":" + _sec, c_white, c_white, c_white, c_white, 1);
