/// @description Insert description here
// You can write your code in this editor
if(oSystem.timing == true){
	delay += 1 / room_speed;
	if(delay > 601){
		text = chat_list[# 0, current_second % 13];
		delay = 0;
	}
	visible = true;
	with(oBox_05)
		visible = true;
}
if(visible == true && oSystem.timing == false){
	var mouse_click = device_mouse_check_button_pressed(0, mb_left);
	var mouse_pos = position_meeting(mouse_x, mouse_y, oBox_05);

	if(mouse_click && mouse_pos){
		visible = false;
		with(oBox_05)
			visible = false;
	}
}