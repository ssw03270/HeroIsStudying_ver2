/// @description Insert description here
// You can write your code in this editor
_coin = oSystem.playerPAY;

var mouse_click = device_mouse_check_button_pressed(0, mb_left);
var mouse_pos = position_meeting(mouse_x, mouse_y, self);

if(mouse_click && mouse_pos){
	if(oSystem.playerPAY <= oSystem.coin){
		oSystem.coin -= oSystem.playerPAY;
		oSystem.playerLV += 1;
	}
}
if(mouse_pos){
	sprite_index = sBox_02_pushed;
}else{
	sprite_index = sBox_02;
}