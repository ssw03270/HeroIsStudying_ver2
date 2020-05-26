/// @description Insert description here
// You can write your code in this editor
_time = oSystem.total_timer;
_hour = string(round(_time / 3600));
_time %= 3600;
_min = string(round(_time / 60));