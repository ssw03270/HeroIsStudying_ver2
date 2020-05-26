/// @description Insert description here
// You can write your code in this editor
var mouse_click = device_mouse_check_button_pressed(0, mb_left);
var mouse_pos = position_meeting(mouse_x, mouse_y, self);

if(mouse_click && mouse_pos){
	if(oSystem.timer > 0 && oSystem.timing == false){
		oSystem.set_timer = oSystem.timer;
		oSystem.start_time = oSystem.now_time;
		oSystem.finish_time = oSystem.start_time + oSystem.timer;
		oSystem.timing = true;
	}
}
if(oSystem.timing == true)
	visible = false;
else
	visible = true;
	
if(mouse_pos){
	sprite_index = sBox_05_pushed;
}else{
	sprite_index = sBox_05;
}