// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ShiftState(){
if (left){
	inptdir = 0;
}
if (right){
	inptdir = 180;
}
if (down){
	inptdir = 90;
}
if (up){
	inptdir = 270;
}
hInput = left-right;
vInput = up-down;
fight = keyboard_check_pressed(ord("F"));
perish = keyboard_check_pressed(ord("B"));
}