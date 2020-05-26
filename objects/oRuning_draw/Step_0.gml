/// @description Insert description here
// You can write your code in this editor

if(oSystem.timing == false){
	visible = false;
}else{
	visible = true;
	delay += 1 / room_speed;
}
if(delay > 3){
	delay = 0;	
}else if(delay > 2){
	text = "진행중...";
}
else if(delay > 1)
	text = "진행중..";
else
	text = "진행중.";
