/// @description Insert description here
// You can write your code in this editor

draw_self()
draw_set_font(fName);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_text_color(x + 15, y - 8, _name, c_black, c_black, c_black, c_black, 1);
draw_set_font(fPlus);
draw_text_color(x + 20, y + 12, "ATK +" + string(_plus), c_black, c_black, c_black, c_black, 1);