left = keyboard_check(vk_left);
right = keyboard_check(vk_right);
down = keyboard_check(vk_down);
up = keyboard_check(vk_up);






if(Scheme == 1){
NormalState();
}else{
ShiftState();
}



	

if (hInput != 0 || vInput != 0){
	if(vInput < 0){
		attx = 2;
	}else if(vInput > 0){
		attx = 3;
	}
	if (spd + acc < 10){
		spd = spd + acc;
	}

	dir = point_direction(0, 0, hInput, vInput);
	moveX = lengthdir_x(spd,dir);
	moveY = lengthdir_y(spd,dir);
	
	if (place_meeting(x+moveX,y,oWall)){
	    place = moveX;
		if(place > 0){
			for (var i = 0; i < place;i++){
				if (!place_meeting(x+i,y,oWall)){
					moveX = i;
				}
			}
		}else{
			for (var i = 0; i > place;i--){
				if (!place_meeting(x+i,y,oWall)){
					moveX = i;
				}
			}	
		}
	}
	if (place_meeting(x,y+moveY,oWall)){
	    place = moveY;
		if(place > 0){
			for (var i = 0; i < place;i++){
				if (!place_meeting(x,y+i,oWall)){
					moveY = i;
				}
			}
		}else{
			for (var i = 0; i > place;i--){
				if (!place_meeting(x,y+i,oWall)){
					moveY = i;
				}
			}	
		}
	}
	x += moveX;
	y += moveY;
}else {
	spd = 5;
}

if(keyboard_check(vk_escape)){
	game_end();
}
if(keyboard_check(ord("R"))){
	room_restart();
}
	
if(hp== 0){
	instance_destroy();
}
if(fight){
	
		instance_create_layer(x,y,"Instances_1",oAttack);
		oAttack.image_angle = inptdir;
	
	
}