/// @description Insert description here
// You can write your code in this editor
var back_key = keyboard_check_pressed(vk_backspace);

if(back_key && room_get_name(room) == "room_info")
	room_goto(room_start);
if(back_key && room_get_name(room) == "room_start")
	game_end();

now_time = (current_hour * 3600 + current_minute * 60 + current_second);
if(timer < 0)
	timer = 0;
if(timing == true){//시간 
	timer = finish_time - now_time;
	if(check_time >= now_time){
		finish_time -= 24 * 3600 - start_time;
		start_time = 0;
	}
	check_time = now_time - 1;
	if(now_time >= finish_time){
		timing = false;
		total_timer += set_timer;
		set_timer /= 300;
		set_timer = round(set_timer);
		coin += set_timer;
		total_coin += set_timer;
		oChat_draw.text = string(set_timer) + "G를 획득 했습니다."
		achievement_post_score("CgkI8oD04MEIEAIQAA", total_timer / 3600);
	}
	if(back_key){
		if(oChat_draw.text != "중도포기시 불이익이 생깁니다."){
			oChat_draw.text = "중도포기시 불이익이 생깁니다."
		}else{
			coin /= 2;
			coin = round(coin);
			timing = false;
			ini_open("saves.ini");
			ini_write_real("data", "coin", coin);
			ini_close();
			room_goto(room_start);
		}
	}
}else{
	if(back_key && room_get_name(room) == "room_game")
		room_goto(room_start);
}

weaponNAME = weaponCSV[# 0, weaponLV - 1];
weaponPAY = weaponCSV[# 1, weaponLV];
weaponPLUS = weaponCSV[# 2, weaponLV - 1];

headNAME = headCSV[# 0, headLV - 1];
headPAY = headCSV[# 1, headLV];
headPLUS = headCSV[# 2, headLV - 1];

bodyNAME = bodyCSV[# 0, bodyLV - 1];
bodyPAY = bodyCSV[# 1, bodyLV];
bodyPLUS = bodyCSV[# 2, bodyLV - 1];

shoesNAME = shoesCSV[# 0, shoesLV - 1];
shoesPAY = shoesCSV[# 1, shoesLV];
shoesPLUS = shoesCSV[# 2, shoesLV - 1];

playerPAY = playerCSV[# 0, playerLV - 1];
playerPLUS = playerCSV[# 1, playerLV - 1];

attack = real(weaponPLUS) + real(playerPLUS);
defence = real(headPLUS) + real(bodyPLUS) + real(shoesPLUS) + real(playerPLUS);


///start_day
if(start_year == 0){
	start_year = current_year;
	start_month = current_month;
	start_day = current_day;
	
}

///auto_save

delay_02 += 1 / room_speed;
if(delay_02 > 1){
	ini_open("saves.ini");
	ini_write_real("data", "total_timer", total_timer);
	ini_write_real("data", "total_coin", total_coin);
	ini_write_real("data", "coin", coin);
	ini_write_real("data", "weaponLV", weaponLV);
	ini_write_real("data", "headLV", headLV);
	ini_write_real("data", "bodyLV", bodyLV);
	ini_write_real("data", "shoesLV", shoesLV);
	ini_write_real("data", "playerLV", playerLV);
	ini_write_real("data", "shoesLV", shoesLV);
	ini_write_real("data", "start_year", start_year);
	ini_write_real("data", "start_month", start_month);
	ini_write_real("data", "start_day", start_day);
	ini_close();
	delay_02 = 0;
}