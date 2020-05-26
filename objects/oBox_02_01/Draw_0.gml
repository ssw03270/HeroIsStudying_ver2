/// @description Insert description here
// You can write your code in this editor

draw_self()
draw_set_font(fPay);
draw_set_halign(fa_middle);
draw_set_valign(fa_middle);
if(oSystem.playerPAY <= oSystem.coin){
	draw_text_color(x, y, string(_coin) + "G" ,c_yellow ,c_yellow ,c_yellow ,c_yellow , 0.7);
}else{
	draw_text_color(x, y, string(_coin) + "G" ,c_red ,c_red ,c_red ,c_red , 0.7);
}