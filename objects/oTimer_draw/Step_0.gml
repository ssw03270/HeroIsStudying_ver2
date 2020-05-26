/// @description Insert description here
// You can write your code in this editor
var time = oSystem.timer;

_sec = string(floor(time % 60));
if(_sec < 10)
	_sec = "0" + _sec;
_min = string(floor((time / 60) % 60));
if(_min < 10)
	_min = "0" + _min;
_hour = string(floor(time / 3600));
if(_hour < 10)
	_hour = "0" + _hour;