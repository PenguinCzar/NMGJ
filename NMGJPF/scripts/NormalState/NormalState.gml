// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NormalState(){
if (left){
inptdir = 180;
}
if (right){
inptdir = 0;
}
if (down){
inptdir = 270;
}
if (up){
inptdir = 90;
}

hInput = right-left;
vInput = down-up;
fight = keyboard_check_pressed(ord("B"));
perish = keyboard_check_pressed(ord("F"));
}