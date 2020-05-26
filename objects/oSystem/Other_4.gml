/// @description Insert description here
// You can write your code in this editor
ini_open("saves.ini"); 
//ini_section_delete("data");
timer = 0;
set_timer = 0;
total_timer = ini_read_real("data", "total_timer", 0);
coin = ini_read_real("data", "coin", 0);
total_coin = ini_read_real("data", "total_coin", 0);
timing = false;
delay_01 = 0;
delay_02 = 0;
start_year = ini_read_real("data", "start_year", 0);
start_month = ini_read_real("data", "start_month", 0);
start_day = ini_read_real("data", "start_day", 0);
give_up = 0;
tuto = ini_read_real("data", "tuto", 0);

max_time = 356400;
time_01 = 600;
time_02 = 1800;
time_03 = 3600;

playerCSV = load_csv("레벨목록.csv");
weaponCSV = load_csv("무기목록.csv");
headCSV = load_csv("투구목록.csv");
bodyCSV = load_csv("갑옷목록.csv");
shoesCSV = load_csv("신발목록.csv");

playerLV = ini_read_real("data", "playerLV", 1);
weaponLV = ini_read_real("data", "weaponLV", 1);
headLV = ini_read_real("data", "headLV", 1);
bodyLV = ini_read_real("data", "bodyLV", 1);
shoesLV = ini_read_real("data", "shoesLV", 1);

playerPAY = 0;
weaponPAY = 0;
headPAY = 0;
bodyPAY = 0;
shoesPAY = 0;

playerPLUS = 0;
weaponPLUS = 0;
headPLUS = 0;
bodyPLUS = 0;
shoesPLUS = 0;

weaponNAME = "";
headNAME = "";
bodyNAME = "";
shoesNAME = "";

attack = 0;
defence = 0;

ini_close();

//자동 화면 종료 끔
if (os_type == os_android){	
	os_powersave_enable(false);
}
