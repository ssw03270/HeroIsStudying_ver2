/// @description Insert description here
// You can write your code in this editor
var mouse_click = device_mouse_check_button_pressed(0, mb_left);
var mouse_pos = position_meeting(mouse_x, mouse_y, self);

_time = -1 * oSystem.time_03;

if(mouse_click && mouse_pos){
	if(oSystem.timer + _time >= 0 && oSystem.timing == false){
		oSystem.timer += _time;
	}
}
if(mouse_pos){
	sprite_index = sBox_03_pushed;
}else{
	sprite_index = sBox_03;
}