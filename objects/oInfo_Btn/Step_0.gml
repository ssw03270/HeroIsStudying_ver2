/// @description Insert description here
// You can write your code in this editor
var mouse_click = device_mouse_check_button_pressed(0, mb_left);
var mouse_pos = position_meeting(mouse_x, mouse_y, self);

if(mouse_click && mouse_pos){
	room_goto(room_info);
}