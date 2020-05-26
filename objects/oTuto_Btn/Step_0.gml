/// @description Insert description here
// You can write your code in this editor
var mouse_click = device_mouse_check_button_pressed(0, mb_left);
var mouse_pos = position_meeting(mouse_x, mouse_y, self);

if(mouse_click && mouse_pos){
	oSystem.tuto = 1;
	ini_open("saves.ini");
	ini_write_real("data", "tuto", oSystem.tuto);
	ini_close();
}

if(oSystem.tuto == 0){
	visible = true;
}else{
	visible = false;
}