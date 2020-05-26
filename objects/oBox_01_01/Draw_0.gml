/// @description Insert description here
// You can write your code in this editor

draw_self()
draw_set_font(fName);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_text_color(x + 15, y - 8, "LV : " + string(_lv), c_black, c_black, c_black, c_black, 1);
draw_set_font(fPlus);
draw_text_color(x + 15, y + 12, "ATK : " + string(_atk) + " DEF : " + string(_def), c_black, c_black, c_black, c_black, 1);